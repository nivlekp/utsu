import sys
import importlib
import subprocess

from SegmentHandler import SegmentHandler


class SegmentRenderer(SegmentHandler):
    """
    Segment renderer.
    """

    def __call__(self):
        for seg in self._segments:
            path = self._segments_dir / seg
            assert self._is_segment_directory(path)
            ly_path = path / 'illustration.ly'
            assert ly_path.exists()
            command = "{} -dno-point-and-click -o {} {}".format(
                "lilypond", str(ly_path).replace(".ly", ""), str(ly_path)
            )
            result = subprocess.run(command, shell=True)
            if result.returncode:
                print("Failed!")
                sys.exit(1)
            print("OK!")


if __name__ == "__main__":
    renderer = SegmentRenderer(sys.argv[1:])
    renderer()
