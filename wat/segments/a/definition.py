import abjad
import wat


segment_maker = wat.SegmentMaker(
    name='a',
    metronome_marks=wat.metronome_marks['60'],
    arrival_rate=0.2,
    service_rate=0.4,
    segment_duration=10,
    pitches=[i-7 for i in range(30)],
    seed=293874,
    )
