import random
import numpy as np
import queue

import abjad
from abjadext import nauert


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
        self._queue_type = queue_type
        self._rest_threshold = rest_threshold
        np.random.seed(seed)
        random.seed(seed)
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
        assert self._instances is not None and len(self._instances) > 0
        durations = []
        pitches = []
        q = queue.Queue()
        # if self._instances[0] > self._rest_threshold:
        #     durations.append(self._instances[0])
        #     pitches.append(None)
        # else:
        #     pass
        durations.append(self._durations[0])
        pitches.append(self._pitches[0])
        arrival_index = 1
        curr_time = 0.0
        offset = self._durations[0]
        while arrival_index < len(self._instances):
            # or maybe we don't have to care whether the queue is empty or not
            if q.empty():  # empty queue
                if curr_time + offset > self._instances[arrival_index]:
                    # previous note has not finished yet, so we should queue
                    # the newly arrived note
                    q.put(arrival_index)
                    offset = offset + curr_time - self._instances[arrival_index]
                    curr_time = self._instances[arrival_index]
                    arrival_index = arrival_index + 1
                else:
                    # previous note will already be finished before the arrival
                    # of next note, so we should insert rest then start the
                    # next one
                    rest_dur = self._instances[arrival_index] - curr_time - offset
                    durations.append(rest_dur)
                    pitches.append(None)
                    offset = self._durations[arrival_index]
                    durations.append(self._durations[arrival_index])
                    pitches.append(self._pitches[arrival_index])
                    curr_time = self._instances[arrival_index]
                    arrival_index = arrival_index + 1
            else:  # there's already a client in the queue
                # queue the current note
                if curr_time + offset > self._instances[arrival_index]:
                    q.put(arrival_index)
                    offset = offset + curr_time - self._instances[arrival_index]
                    curr_time = self._instances[arrival_index]
                    arrival_index = arrival_index + 1
                else:
                    # previous note will already be finished before the arrival
                    # of the next note, so we should dequeue the first note in
                    # the queue
                    index = q.get()
                    curr_time = curr_time + offset
                    offset = self._durations[index]
                    durations.append(self._durations[index])
                    pitches.append(self._pitches[index])
            # rest_dur = self._instances[index]-self._instances[index-1]-durations[-1]
            # if rest_dur > self._rest_threshold:
            #    durations.append(rest_dur)
            #    pitches.append(None)
        self._durations = durations
        self._pitches = pitches

    def make_cloud(self):
        self._simulate_queue()
        q_event_sequence = nauert.QEventSequence.from_millisecond_pitch_pairs(
            tuple(zip(self.durations_in_millesecond, self._pitches))
        )
        quantizer = nauert.Quantizer()
        result = quantizer(q_event_sequence)
        return result

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
    def durations_in_millesecond(self):
        return [dur * 1000 for dur in self._durations]


if __name__ == "__main__":
    cloud = Cloud(0.5, 1, [i - 7 for i in range(30)], 20, 8839892)
    breakpoint()
    result = cloud.make_cloud()
    abjad.show(result)
