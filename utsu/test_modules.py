import abjad
import pang
import utsu


def test_SegmentMaker___init___01():
    cloud = pang.Cloud()
    segment_maker = utsu.SegmentMaker(clouds=[cloud])
    assert segment_maker.metadata == abjad.OrderedDict([])
