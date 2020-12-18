import wat


segment_maker = wat.SegmentMaker(
    name="c",
    metronome_marks=wat.metronome_marks["60"],
    arrival_rate=1.5,
    service_rate=3.0,
    segment_duration=50,
    pitches=wat.tools.gen_pitches_from_sieve(sieve=wat.sieves["A"], origin=0, low=0, high=wat.highest_piano_note),
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=82746662,
)
