import wat

def test_SegmentMake___init___01():
    cloud = wat.Cloud()
    segment_maker = wat.SegmentMaker(clouds=[cloud])
