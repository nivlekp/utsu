import abjad

from wat.tools.ScoreTemplate import ScoreTemplate
from wat import Cloud

class SegmentMaker(abjad.SegmentMaker):
    """
    Segment-maker.

    >>> import wat

    """
    def __init__(
        self,
        name=None,
        metronome_marks=None,
        time_signatures=None,
        arrival_rate=None,
        service_rate=None,
        segment_duration=None,
        pitches=None,
        seed=None,
    ):
        super(SegmentMaker, self).__init__()
        self._lilypond_file = None
        self._rhythm_definitions = []
        self._segment_directory = None
        self._score = None
        #self.markup_leaves = markup_leaves
        self.name = name
        self.metronome_marks = metronome_marks or []
        self.time_signatures = time_signatures or []
        self.arrival_rate = arrival_rate
        self.service_rate = service_rate
        self.segment_duration = segment_duration
        self.pitches = pitches
        self.seed = seed

    def make_cloud(self):
        cloud = Cloud(
            arate=self.arrival_rate,
            srate=self.service_rate,
            pitches=self.pitches,
            dur=self.segment_duration,
            seed=self.seed
            )
        durations = cloud.durations_in_millesecond
        pitches = cloud.pitches
        q_event_sequence = \
            nauert.QEventSequence.from_millisecond_pitch_pairs(
                tuple(zip(durations, pitches)))
        quantizer = nauert.Quantizer()
        return quantizer(q_event_sequence)
