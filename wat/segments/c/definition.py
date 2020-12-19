import wat


pitch_set = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["A"], origin=0, low=0, high=wat.highest_piano_note
)


cloud = wat.Cloud(
    arate=1.5,
    srate=3.0,
    pitches=pitch_set,
    duration=50,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=82746662,
    voice_name="Piano RH Voice",
)


segment_maker = wat.SegmentMaker(
    name="c",
    metronome_marks=wat.metronome_marks["60"],
    time_signatures=(4, 4),
    clouds=cloud,
)
