import utsu


def test_SegmentMake___init___01():
    cloud = utsu.Cloud()
    segment_maker = utsu.SegmentMaker(clouds=[cloud])
