import typing

import abjad
import pang
from abjadext import nauert

from ._lib import (
    highest_note_without_octava,
    lowest_note_without_octava,
    make_score_template,
)


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
        with_ottava=None,
        clouds=None,
        dynamic_maker=None,
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
            for i, clef in enumerate(self._clefs):
                if clef is not None:
                    self._clefs[i] = abjad.Clef(clef)
            # self._clefs = [abjad.Clef(clef) for clef in self._clefs]
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
        if with_ottava is not None:
            self._with_ottava = with_ottava
        if clouds is None:
            raise Exception("Please include at least one cloud")
        if not isinstance(clouds, list):
            self._clouds = [clouds]
        else:
            self._clouds = clouds
        if not all(isinstance(cloud, pang.Cloud) for cloud in self._clouds):
            raise Exception("clouds should be of the type Cloud")
        self._dynamic_maker = dynamic_maker

    def _make_score(self):
        score = make_score_template()
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
        Gets metadata after run.
        """
        return self._metadata

    def _override_directions(self, result, stem_direction):
        if stem_direction is not None:
            for container in result:
                abjad.override(container).rest.direction = stem_direction
                abjad.override(container).stem.direction = stem_direction
                abjad.override(container).tie.direction = stem_direction
                abjad.override(container).tuplet_bracket.direction = stem_direction
        # else:
        #     grobs = ["rest", "stem", "tie", "tuplet_bracket"]
        #     for grob in grobs:
        #         revert_string = abjad.OverrideInterface.make_lilypond_revert_string(grob, "direction")
        #         literal = abjad.LilyPondLiteral(revert_string)
        #         abjad.attach(revert_string, voice)

    def _extend_voices(self, all_results):
        max_length = self._segment_length
        for cloud, results in zip(self._clouds, all_results):
            for result, voice_name in zip(results, cloud.voice_names):
                if len(result) < max_length:
                    rest = abjad.MultimeasureRest()
                    # TODO: at the moment just hard-coding
                    rest.written_duration = abjad.Duration((4, 4))
                    multimeasure_rests = [rest] * (max_length - len(result))
                    result.extend(multimeasure_rests)
                self._score[voice_name].extend(result)

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
            self._override_directions(result, stem_direction)
            self._post_processing(results, cloud.voice_names)
        self._segment_length = max_length
        self._extend_voices(all_results)

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
            # For now, just make 8va
            octaves = 1
            abjad.attach(abjad.Ottava(n=octaves), leaf)
            return True
        elif leaf.written_pitch < lowest_note_without_octava:
            interval = abjad.NumberedInterval.from_pitch_carriers(
                leaf.written_pitch,
                abjad.NumberedPitch(lowest_note_without_octava),
            )
            octaves = interval.octaves + 1
            # For now, just make 8vb
            octaves = 1
            abjad.attach(abjad.Ottava(n=-octaves), leaf)
            return True
        else:
            abjad.attach(abjad.Ottava(n=0), leaf)
            return False

    def _get_staff_name(self, voice_name):
        return self._score[voice_name]._parent.name

    def _post_processing(self, voice, voice_names):
        """
        Process the voice after quantization. In the meantime, this just
        attaches ottava.
        """
        staff_name = self._get_staff_name(voice_names[0])
        if hasattr(self, "_with_ottava") and self._with_ottava[staff_name] != 0:
            result = abjad.select(voice).leaves()
            for leaf in result:
                # FIXME:
                # abjad.ottava(self._score[staff_name][:], start_ottava=abjad.Ottava(n=self._with_ottava[staff_name]))
                abjad.attach(abjad.Ottava(n=self._with_ottava[staff_name]), leaf)
            return
        previously_attached = False
        result = abjad.select(voice).leaves()
        for leaf in result:
            if isinstance(leaf, abjad.Note):
                previously_attached = self._attach_ottava(leaf)
            if isinstance(leaf, abjad.Rest) and previously_attached:
                abjad.attach(abjad.Ottava(n=0), leaf)
                previously_attached = False

    def _print_lilypond_file(self) -> None:
        """
        Prints `illustration.ly` file.
        """
        with open("illustration.ly", "w") as file_pointer:
            file_pointer.write(abjad.lilypond(self._lilypond_file))
        with open("build.ly", "w") as file_pointer:
            file_pointer.write(abjad.lilypond(self._lilypond_file.items[0]))

    def _configure_score(self):
        staff = self._score["RH Staff"]
        abjad.detach(abjad.TimeSignature, staff[0])
        staff = self._score["LH Staff"]
        abjad.detach(abjad.TimeSignature, staff[0])

    def _make_dynamics(self):
        self._dynamic_maker(score=self._score, segment_length=self._segment_length)

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
        overwrite: bool = None,
    ) -> abjad.LilyPondFile:
        """
        Runs segment-maker.
        """
        self._metadata = abjad.OrderedDict(metadata)
        self._persist = abjad.OrderedDict(persist)
        self._previous_metadata = abjad.OrderedDict(previous_metadata)
        self._previous_persist = abjad.OrderedDict(previous_persist)
        self._segment_directory = segment_directory
        self._overwrite = overwrite
        self._make_score()
        self._make_lilypond_file()
        self._make_clouds()
        self._make_dynamics()
        self._configure_score()
        assert isinstance(self._lilypond_file, abjad.LilyPondFile)
        self._print_lilypond_file()
        return self._lilypond_file
