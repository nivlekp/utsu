import wat


pitch_set = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["C"], origin=0, low=0, high=wat.highest_piano_note
)


cloud_rh = wat.Cloud(
    arate=0.2,
    srate=0.4,
    pitches=pitch_set,
    duration=10,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928734,
    voice_name="Piano RH Voice",
)


cloud_lh = wat.Cloud(
    arate=0.4,
    srate=0.6,
    pitches=pitch_set,
    duration=10,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928477773,
    voice_name="Piano LH Voice",
)


segment_maker = wat.SegmentMaker(
    name="a",
    metronome_marks=[wat.metronome_marks["60"], wat.metronome_marks["60"]],
    time_signatures=[(4, 4), (4, 4)],
    clouds=[cloud_rh, cloud_lh],
)
