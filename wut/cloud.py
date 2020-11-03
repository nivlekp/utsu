import abjad as aj
import random
import numpy as np

class Note(aj.Note):
    """
    My definition of the Note class derived from abjad.Note.
    In addition to the properties of abjad.Note, we need time instance at which
    the note begins and how long it lasts for. Both properties should be in seconds.
    """
    def __init__(self, note, instance, duration):
        # First init the super class (aj.Note), the argument supplied is
        # only a dummy for now. The actual duration is in second. The written
        # duration shall be changed when actually mapped to the score.
        super().__init__(note, aj.Duration(1,4))
        self.instance = instance
        self.duration = duration

class Cloud:
    """
    A class to represent a musical Cloud.
    >>> cloud = Cloud(4, 4, [i-7 for i in range(30)])
    """
    def __init__(self, arate, srate, pitches, duration, seed=None):
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
        #NOTE: Ideally this cloud should not be bounded by the tempo or time
        #signature, as it could span over multiple tempo region and time signatures.
        #Therefore it might be useful to use seconds as unit. And in
        #this case we might need to define our own class of Note based on aj.Note
        self._arate = arate
        self._srate = srate
        self._duration = duration
        self._pitches = pitches
        #self._avg_note_dur = 0.5 # Mean of the duration distribution
        #self._var_note_dur = 1 # Variance of the duration distribution
        self._nnotes = round(self._duration * self._arate)
        if seed is None:
            #seed = 938479287
            seed = 2938749234
        np.random.seed(seed)
        random.seed(seed)
        self.seq = self._gen_cloud()

    def _gen_cloud(self):
        instances = self._gen_note_start_instance()
        durations = self._gen_note_duration()
        pitches = self._gen_rand_pitch_seq()
        return [Note(p, i, d) for p, i, d in zip(pitches, instances, durations)]

    def _gen_note_start_instance(self):
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
        #mu = self._avg_note_dur
        #sigma = np.sqrt(self._var_note_dur)
        #return np.random.uniform(0.2, 2.5, self._nnotes)
        #return np.random.uniform(0.2, 1.0, self._nnotes)
        return np.random.exponential(1/self._srate, self._nnotes)

    def _gen_rand_pitch_seq(self):
        """Generate a random pitch sequence given the length and pitches."""
        return [random.choice(self._pitches) for _ in range(self._nnotes)]

    @property
    def instances(self):
        return [note.instance for note in self.seq]

    @property
    def pitches(self):
        return [note.written_pitch.number for note in self.seq]

    @property
    def durations(self):
        return [note.duration for note in self.seq]

    @property
    def durations_in_millesecond(self):
        return [note.duration * 1000 for note in self.seq]

if __name__ == "__main__":
    cloud = Cloud(1, 1, [i-7 for i in range(30)], 4)
