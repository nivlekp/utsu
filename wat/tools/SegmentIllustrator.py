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
            path = self._segments_dir / seg
            assert self._is_segment_directory(path)
            definition = importlib.import_module("wat.segments." + seg + ".definition")
            lilypond_file = definition.segment_maker.run()
            with open(str(path / "illustration.ly"), "w") as file_pointer:
                file_pointer.write(abjad.lilypond(lilypond_file))


if __name__ == "__main__":
    illustrator = SegmentIllustrator(sys.argv[1:])
    illustrator()
