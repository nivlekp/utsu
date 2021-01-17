import random
import numpy as np
import queue

import abjad
from abjadext import nauert
from . import noteserver


class Cloud:
    """
    A class to represent a musical Cloud.
    >>> cloud = Cloud(1, 2, [i-7 for i in range(30)], 20, 'M/M/1', 9237843)
    """

    def __init__(
        self,
        arate,
        srate,
        pitches,
        duration,
        queue_type="M/M/1",
        rest_threshold=0.2,
        seed=982374,
        voice_names=["Piano RH Voice"],
    ):
        """
        Generate a cloud, given the arate, duration in second and pitch pitches.
        Note that we should _not_ include any rest in here. (Since rest is implied
        by the absence of notes, they should be generated when the notes are mapped
        to the score/staff)

        :param arate: notes per second
        :param duration:duration in seconds
        :param pitches:    a list containing a selection of notes (could be either
                        integers or strings according to how abjad works)
        :returns:       there should be a property somehow to list of notes
        """
        # NOTE: Ideally this cloud should not be bounded by the tempo or time
        # signature, as it could span over multiple tempo region and time signatures.
        # Therefore it might be useful to use seconds as unit. And in
        # this case we might need to define our own class of Note based on aj.Note
        self._arate = arate
        self._srate = srate
        self._duration = duration
        self._pitches = pitches
        self._nnotes = round(self._duration * self._arate)
        self._arrival_model, self._service_model, nservers = tuple(
            queue_type.split("/")
        )
        self._nservers = int(nservers)
        # self._queue_type = queue_type
        self._rest_threshold = rest_threshold
        np.random.seed(seed)
        random.seed(seed)
        assert len(voice_names) == self._nservers
        self._voice_names = voice_names
        self._pitches, self._instances, self._durations = self._gen_cloud()

    def _gen_cloud(self):
        instances = self._gen_note_arrival_instance()
        durations = self._gen_note_duration()
        pitches = self._gen_rand_pitch_seq()
        return (pitches, instances, durations)

    def _gen_note_arrival_instance(self):
        """
        Generate a list of time instances where each note in the cloud begins
        The length of the list (number of notes in the given time duration) could
        be computed using Poisson distribution with a mean of `arate` times
        `duration`. Then we could use uniform distribution to distribute each note
        on a random spot on the time line.

        TODO: having said that, it is possible to move this one level up, that
        is, in this class, number of notes in the duration could be a constant
        computed by arate*duration, and the Poisson distribution should be
        done one level up to generate arate. That way it is more
        computationally efficient...

        UPDATE: we will take duration as a constant for simplicity.
        """
        instances = np.random.uniform(0.0, self._duration, self._nnotes)
        return sorted(instances)

    def _gen_note_duration(self):
        """
        Generate a list of durations for which each note will last for.
        Distribution used here should be Gaussian of some sort...
        UPDATE: maybe we should do uniform distribution after all...
        """
        # return np.random.uniform(0.2, 1.0, self._nnotes)
        return np.random.exponential(1 / self._srate, self._nnotes)

    def _gen_rand_pitch_seq(self):
        """Generate a random pitch sequence given the length and pitches."""
        return [random.choice(self._pitches) for _ in range(self._nnotes)]

    def _simulate_queue(self):
        """
        Simulate the queue based on the queue type.
        At the moment, this only works for M/M/1 queue.
        """
        # TODO: model rest_threshold
        assert self._instances is not None and len(self._instances) > 0
        servers = [
            noteserver.NoteServer(rest_threshold=self._rest_threshold)
            for _ in range(self._nservers)
        ]
        curr_time = 0.0
        q = queue.Queue()
        arrival_index = 0
        while arrival_index < len(self._instances) or not q.empty():
            server_index, closest_offset_instance = noteserver._get_closest_server(
                servers
            )
            if q.empty():
                if closest_offset_instance > self._instances[arrival_index]:
                    # previous note has not finished yet, so we should queue
                    # the newly arrived note
                    q.put(arrival_index)
                    curr_time = self._instances[arrival_index]
                    arrival_index = arrival_index + 1
                else:
                    curr_time = self._instances[arrival_index]
                    servers[server_index].serve(
                        curr_time,
                        self._durations[arrival_index],
                        self._pitches[arrival_index],
                    )
                    arrival_index = arrival_index + 1
            else:  # there's already a client in the queue
                # queue the current note
                if (
                    arrival_index < len(self._instances)
                    and closest_offset_instance > self._instances[arrival_index]
                ):
                    q.put(arrival_index)
                    curr_time = self._instances[arrival_index]
                    arrival_index = arrival_index + 1
                else:
                    index = q.get()
                    curr_time = closest_offset_instance
                    servers[server_index].serve(
                        curr_time, self._durations[index], self._pitches[index]
                    )

        self._durations_per_server = [server.durations for server in servers]
        self._pitches_per_server = [server.pitches for server in servers]

    def make_cloud(self, *arguments, **keywords):
        self._simulate_queue()
        results = []
        measurewise_q_schema = nauert.MeasurewiseQSchema(*arguments, **keywords)
        quantizer = nauert.Quantizer()
        for durations_ms, pitches in zip(self.durations_msps, self.pitches_per_server):
            q_event_sequence = nauert.QEventSequence.from_millisecond_pitch_pairs(
                tuple(zip(durations_ms, pitches))
            )
            result = quantizer(q_event_sequence, q_schema=measurewise_q_schema)
            results.append(result)
        return results

    @property
    def instances(self):
        return self._instances

    @property
    def pitches(self):
        return self._pitches

    @property
    def durations(self):
        return self._durations

    @property
    def durations_msps(self):
        """
        Durations in millesecond per server
        """
        return [[dur * 1000 for dur in durs] for durs in self._durations_per_server]

    @property
    def durations_in_millesecond(self):
        return [dur * 1000 for dur in self._durations]

    @property
    def durations_per_server(self):
        return self._durations_per_server

    @property
    def pitches_per_server(self):
        return self._pitches_per_server

    @property
    def voice_names(self):
        return self._voice_names
