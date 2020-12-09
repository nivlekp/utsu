import importlib
from pathlib import Path

import wat


class SegmentHandler:
    """
    Segment handler base class.
    """

    def __init__(self, segments):
        self._segments_dir = Path(wat.segments.__path__[0])
        self._segments = segments

    def __call__(self):
        raise NotImplementedError

    def _is_segment_directory(self, path):
        if not path.is_dir():
            return False
        init = path / "__init__.py"
        definition = path / "definition.py"
        if init.exists() and definition.exists():
            return True
        return False
