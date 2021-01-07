import typing

import abjad
from abjadext import nauert

from wat.tools.ScoreTemplate import ScoreTemplate
from wat.tools.cloud import Cloud


class SegmentMaker(abjad.SegmentMaker):
    """
    Segment-maker.
    """
    def __init__(
        self,
        name=None,
        metronome_marks=None,
        time_signatures=None,
        clefs=None,
        clouds=None,
    ):
        super(SegmentMaker, self).__init__()
        self._lilypond_file = None
        self._rhythm_definitions = []
        self._segment_directory = None
        self._score = None
        # self.markup_leaves = markup_leaves
        self.name = name
        # NOTE: in here we only allow one metronome mark, and one
        # time_signature per cloud
        self._metronome_marks = (
            metronome_marks if isinstance(metronome_marks, list) else [metronome_marks]
        )
        self._time_signatures = (
            time_signatures if isinstance(time_signatures, list) else [time_signatures]
        )
        self._clefs = clefs if isinstance(clefs, list) else [clefs]
        self._clefs = [abjad.Clef(clef) for clef in self._clefs]
        if clouds is None:
            raise Exception("Please include at least one cloud")
        if not isinstance(clouds, list):
            self._clouds = [clouds]
        else:
            self._clouds = clouds
        if not all(isinstance(cloud, Cloud) for cloud in self._clouds):
            raise Exception("clouds should be of the type Cloud")

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
        for item in lilypond_file.items[:]:
            if getattr(item, "name", None) == "header":
                lilypond_file.items.remove(item)
        self._lilypond_file = lilypond_file

    @property
    def metadata(self):
        """
        Gets metadata after run
        """
        return self._metadata

    def _make_cloud(self):
        for cloud, tempo, time_signature, clef in zip(
            self._clouds, self._metronome_marks, self._time_signatures, self._clefs
        ):
            schema_specs = {"tempo": tempo, "time_signature": time_signature}
            result = cloud.make_cloud(**schema_specs)
            abjad.attach(clef, result[0][0])
            self._score[cloud.voice_name].extend(result)

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
        segment_directory=None,
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
