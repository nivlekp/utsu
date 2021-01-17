import wat


duration = 30

search_tree_rh = {2: {2: None, 3: None}, 3: None, 5: None, 7: None}
search_tree_lh = {2: {2: None, 3: None}, 3: None, 5: None, 7: None}

pitch_set_rh = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["C"], origin=0, low=0, high=wat.highest_piano_note
)


pitch_set_lh = wat.tools.gen_pitches_from_sieve(
    sieve=wat.sieves["C"], origin=0, low=wat.lowest_piano_note, high=0
)


cloud_rh = wat.Cloud(
    arate=0.2,
    srate=0.4,
    pitches=pitch_set_rh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928734,
    voice_names=["Piano RH Voice"],
)


cloud_lh = wat.Cloud(
    arate=0.4,
    srate=0.6,
    pitches=pitch_set_lh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928477773,
    voice_names=["Piano LH Voice"],
)


segment_maker = wat.SegmentMaker(
    name="a",
    metronome_marks=[wat.metronome_marks["60"], wat.metronome_marks["60"]],
    time_signatures=[(4, 4), (4, 4)],
    search_trees=[search_tree_rh, search_tree_lh],
    use_full_measures=[False, False],
    clouds=[cloud_rh, cloud_lh],
    clefs=["treble", "bass"],
)
