import typing

import abjad
from abjadext import nauert

from wat.tools.ScoreTemplate import ScoreTemplate
try:
    from .Cloud import Cloud
except ImportError:
    import wat
    from wat.tools.Cloud import Cloud

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

    def _make_score(self):
        template = ScoreTemplate()
        score = template()
        self._score = score

    def _make_lilypond_file(self):
        path = "../../stylesheets/stylesheet.ily"
        lilypond_file = abjad.LilyPondFile.new(
            music=self._score, includes=[path], use_relative_includes=True
        )
        delattr(lilypond_file.header_block, "tagline")
        for item in lilypond_file.items[:]:
            if getattr(item, "name", None) in ("layout", "paper"):
                lilypond_file.items.remove(item)
        self._lilypond_file = lilypond_file

    @property
    def metadata(self):
        """
        Gets metadata after run
        """
        return self._metadata

    def _make_cloud(self):
        cloud = Cloud(
            arate=self.arrival_rate,
            srate=self.service_rate,
            pitches=self.pitches,
            duration=self.segment_duration,
            seed=self.seed
        )
        result = cloud.make_cloud()
        self._score['Piano RH Voice'].extend(result)
        #breakpoint()
        #self._lilypond_file.extend(self._score)

    def run(
        self,
        activate: typing.List[abjad.Tag] = None,
        deactivate: typing.List[abjad.Tag] = None,
        do_not_print_timing: bool = None,
        environment: str = None,
        metadata: abjad.OrderedDict = None,
        midi: bool = None,
        persist: abjad.OrderedDict = None,
        previous_metadata: abjad.OrderedDict = None,
        previous_persist: abjad.OrderedDict = None,
        remove: typing.List[abjad.Tag] = None,
        segment_directory = None,
    ) -> abjad.LilyPondFile:
        """
        Runs segment-maker.
        """
        self._metadata = abjad.OrderedDict(metadata)
        self._persist = abjad.OrderedDict(persist)
        self._previous_metadata = abjad.OrderedDict(previous_metadata)
        self._previous_persist = abjad.OrderedDict(previous_persist)
        self._segment_directory = segment_directory
        self._make_score()
        self._make_lilypond_file()
        self._make_cloud()
        assert isinstance(self._lilypond_file, abjad.LilyPondFile)
        return self._lilypond_file

if __name__ == "__main__":
    segment_maker = SegmentMaker(
        metronome_marks=wat.metronome_marks['60'],
        arrival_rate=0.2,
        service_rate=0.4,
        segment_duration=10,
        pitches=[i-7 for i in range(30)],
        seed=293874,
        )
    lilypond_file = segment_maker.run()
    abjad.f(lilypond_file)
