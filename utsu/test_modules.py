import utsu
import pang


def test_SegmentMaker___init___01():
    cloud = pang.Cloud()
    segment_maker = utsu.SegmentMaker(clouds=[cloud])
