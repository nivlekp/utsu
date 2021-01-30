import typing

import abjad
from abjadext import nauert
import pang

from .._lib import highest_note_without_octava, lowest_note_without_octava
from .ScoreTemplate import ScoreTemplate


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
        stem_directions=None,
        search_trees=None,
        use_full_measures=None,
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
        if clefs is not None:
            self._clefs = clefs if isinstance(clefs, list) else [clefs]
            self._clefs = [abjad.Clef(clef) for clef in self._clefs]
        else:
            self._clefs = [None] * len(self._metronome_marks)
        if stem_directions is not None:
            self._stem_directions = (
                stem_directions
                if isinstance(stem_directions, list)
                else [stem_directions]
            )
        else:
            self._stem_directions = [None] * len(self._metronome_marks)
        if search_trees is not None:
            search_trees = (
                search_trees if isinstance(search_trees, list) else [search_trees]
            )
            self._search_trees = [
                nauert.UnweightedSearchTree(tree) for tree in search_trees
            ]
        else:
            self._search_trees = [None] * len(self._metronome_marks)
        if use_full_measures is not None:
            use_full_measures = (
                use_full_measures
                if isinstance(use_full_measures, list)
                else [use_full_measures]
            )
            self._use_full_measures = use_full_measures
        else:
            self._use_full_measures = [None] * len(self._metronome_marks)
        if clouds is None:
            raise Exception("Please include at least one cloud")
        if not isinstance(clouds, list):
            self._clouds = [clouds]
        else:
            self._clouds = clouds
        if not all(isinstance(cloud, pang.Cloud) for cloud in self._clouds):
            raise Exception("clouds should be of the type Cloud")

    def _make_score(self):
        template = ScoreTemplate()
        score = template()
        self._score = score

    def _make_lilypond_file(self):
        path = "../../stylesheets/stylesheet.ily"
        lilypond_file = abjad.LilyPondFile(
            items=[self._score], includes=[path], use_relative_includes=True
        )
        self._lilypond_file = lilypond_file

    @property
    def metadata(self):
        """
        Gets metadata after run
        """
        return self._metadata

    def _make_clouds(self):
        max_length = 0
        all_results = []
        for (
            cloud,
            tempo,
            time_signature,
            clef,
            stem_direction,
            search_tree,
            use_full_measure,
        ) in zip(
            self._clouds,
            self._metronome_marks,
            self._time_signatures,
            self._clefs,
            self._stem_directions,
            self._search_trees,
            self._use_full_measures,
        ):
            schema_specs = {
                "tempo": tempo,
                "time_signature": time_signature,
            }
            if search_tree is not None:
                schema_specs["search_tree"] = search_tree
            if use_full_measure is not None:
                schema_specs["use_full_measure"] = use_full_measure
            results = cloud.make_cloud(**schema_specs)
            # TODO: attach tempi
            # For now, because we are only handling single server per queue,
            # thus
            all_results.append(results)
            result = results[0]
            max_length = len(result) if len(result) > max_length else max_length
            if clef is not None:
                first_leaf = abjad.select(result).leaf(0)
                abjad.attach(clef, first_leaf)
            if stem_direction is not None:
                for container in results[0]:
                    # TODO
                    pass
            self._post_processing(results)
        for cloud, results in zip(self._clouds, all_results):
            for result, voice_name in zip(results, cloud.voice_names):
                if len(result) < max_length:
                    rest = abjad.Rest()
                    # TODO: at the moment just hard-coding
                    rest.written_duration = abjad.Duration((4, 4))
                    spacer_rests = [rest] * (max_length - len(result))
                    result.extend(spacer_rests)
                self._score[voice_name].extend(result)

    def _attach_ottava(self, leaf):
        """
        Attach ottava.
        """
        if leaf.written_pitch > highest_note_without_octava:
            interval = abjad.NumberedInterval.from_pitch_carriers(
                abjad.NumberedPitch(highest_note_without_octava),
                leaf.written_pitch,
            )
            octaves = interval.octaves + 1
            abjad.attach(abjad.Ottava(n=octaves), leaf)
            return True
        elif leaf.written_pitch < lowest_note_without_octava:
            interval = abjad.NumberedInterval.from_pitch_carriers(
                leaf.written_pitch,
                abjad.NumberedPitch(lowest_note_without_octava),
            )
            octaves = interval.octaves + 1
            abjad.attach(abjad.Ottava(n=-octaves), leaf)
            return True
        else:
            abjad.attach(abjad.Ottava(n=0), leaf)
            return False

    def _post_processing(self, voice):
        """
        Process the voice after quantization.
        """
        previously_attached = False
        result = abjad.select(voice).leaves()
        for leaf in result:
            if isinstance(leaf, abjad.Note):
                previously_attached = self._attach_ottava(leaf)
            if isinstance(leaf, abjad.Rest) and previously_attached:
                abjad.attach(abjad.Ottava(n=0), leaf)
                previously_attached = False


    def _configure_score(self):
        voice = self.score["Piano RH Voice"]
        abjad.override(voice).stem.direction = abjad.Up
        abjad.override(voice).rest.direction = abjad.Up
        abjad.override(voice).tie.direction = abjad.Up
        abjad.override(voice).tuplet_bracket.direction = abjad.Up
        voice = self.score["Piano RH Voice1"]
        abjad.override(voice).stem.direction = abjad.Down
        abjad.override(voice).rest.direction = abjad.Down
        abjad.override(voice).tie.direction = abjad.Down
        abjad.override(voice).tuplet_bracket.direction = abjad.Down


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
        self._configure_score()
        self._make_lilypond_file()
        self._make_clouds()
        assert isinstance(self._lilypond_file, abjad.LilyPondFile)
        return self._lilypond_file
