import pang
import utsu

duration = 64

search_tree_rh = {
    2: {2: None, 3: None, 5: None},
    3: {2: None, 3: None},
    5: {2: None},
    7: None,
    11: None,
    13: None,
}

search_tree_lh = {
    2: {2: None, 3: None, 5: None},
    3: {2: None, 3: None},
    5: {2: None},
    7: None,
    11: None,
    13: None,
}


pitch_set_rh = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["B"], origin=0, low=0, high=utsu.highest_piano_note
)


pitch_set_lh = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["B"], origin=0, low=utsu.lowest_piano_note, high=0
)


cloud_rh = pang.Cloud(
    arate=1.5,
    srate=3.0,
    pitches=pitch_set_rh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=82746662,
    voice_names=["Piano RH Voice"],
)

cloud_lh = pang.Cloud(
    arate=1.5,
    srate=3.0,
    pitches=pitch_set_lh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=1938296002,
    voice_names=["Piano LH Voice"],
)


segment_maker = utsu.SegmentMaker(
    name="c",
    metronome_marks=[utsu.metronome_marks["60"], utsu.metronome_marks["60"]],
    time_signatures=[(4, 4), (4, 4)],
    search_trees=[search_tree_rh, search_tree_lh],
    use_full_measures=[True, True],
    clouds=[cloud_rh, cloud_lh],
)
