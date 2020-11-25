import sys
import importlib
from pathlib import Path

import abjad

import wat

class SegmentIllustrator:
    """
    Segment Illustrator
    """

    def __init__(self, segments):
        self._segments_dir = Path(wat.segments.__path__[0])
        self._segments = segments
        #print([seg for seg in segments_dir.iterdir() if self._is_segment_direcotry(seg)])
        pass

    def __call__(self):
        for seg in self._segments:
            path = self._segments_dir / seg
            assert self._is_segment_direcotry(path)
            definition = importlib.import_module('wat.segments.' + seg + '.definition')
            lilypond_file = definition.segment_maker.run()
            with open(str(path / 'illustration.ly'), 'w') as file_pointer:
                file_pointer.write(abjad.lilypond(lilypond_file))
            #print(lilypond_file.__class__)
            #abjad.show(lilypond_file)

    def _is_segment_direcotry(self, path):
        if not path.is_dir():
            return False
        init = path / '__init__.py'
        definition = path / 'definition.py'
        if init.exists() and definition.exists():
            return True
        return False

if __name__ == "__main__":
    illustrator = SegmentIllustrator(sys.argv[1:])
    illustrator()
