import wat


pitch_set_rh = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["A"] & wat.sieves["C"],
    origin=0,
    low=0,
    high=wat.highest_piano_note,
)


pitch_set_lh = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["A"] & wat.sieves["C"], origin=0, low=wat.lowest_piano_note, high=0
)


cloud_rh = wat.Cloud(
    arate=0.5,
    srate=1.0,
    pitches=pitch_set_rh,
    duration=50,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=82746662,
    voice_name="Piano RH Voice",
)


cloud_lh = wat.Cloud(
    arate=0.5,
    srate=1.0,
    pitches=pitch_set_lh,
    duration=50,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=168743,
    voice_name="Piano LH Voice",
)


segment_maker = wat.SegmentMaker(
    name="b",
    metronome_marks=[wat.metronome_marks["60"], wat.metronome_marks["60"]],
    time_signatures=[(4, 4), (4, 4)],
    clouds=[cloud_rh, cloud_lh],
)
