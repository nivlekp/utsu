import sys
import importlib

from SegmentHandler import SegmentHandler

import abjad


class SegmentIllustrator(SegmentHandler):
    """
    Segment Illustrator.
    """

    def __call__(self):
        for seg in self._segments:
            segments_path = self._segments_dir / seg
            assert self._is_segment_directory(segments_path)
            definition = importlib.import_module("wat.segments." + seg + ".definition")
            illustration_file = definition.segment_maker.run()
            with open(str(segments_path / "illustration.ly"), "w") as file_pointer:
                file_pointer.write(abjad.lilypond(illustration_file))
            self._write_segments_to_build(illustration_file, seg)

    def _write_segments_to_build(self, segment_file, seg):
        score_path = self._builds_dir / "score"
        formatted_blocks = segment_file.score_block
        # print(abjad.lilypond(formatted_blocks))
        with open(str(score_path / (seg + ".ly")), "w") as file_pointer:
            file_pointer.write(abjad.lilypond(formatted_blocks))
        # TODO: change this method to a better one
        with open(str(score_path / (seg + ".ly")), "r") as file_pointer:
            block = file_pointer.read().splitlines(True)
        with open(str(score_path / (seg + ".ly")), "w") as file_pointer:
            file_pointer.writelines(block[1:-1])


if __name__ == "__main__":
    illustrator = SegmentIllustrator(sys.argv[1:])
    illustrator()
