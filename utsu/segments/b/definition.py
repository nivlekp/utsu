import pang
import utsu

duration = 80

search_tree_rh = {2: {2: None, 3: None}, 3: {2: None}, 5: None, 7: None}
search_tree_lh = {2: {2: None, 3: None, 5: None}, 3: {2: None}, 5: {2: None}, 7: None}

pitch_set_rh = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["A"] & utsu.sieves["C"],
    origin=0,
    low=0,
    high=utsu.highest_piano_note,
)


pitch_set_lh = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["A"] & utsu.sieves["C"],
    origin=0,
    low=utsu.lowest_piano_note,
    high=0,
)


cloud_rh = pang.Cloud(
    arate=0.5,
    srate=1.0,
    pitches=pitch_set_rh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=82746662,
    voice_names=["Piano RH Voice"],
)


cloud_lh = pang.Cloud(
    arate=0.5,
    srate=1.0,
    pitches=pitch_set_lh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=168743,
    voice_names=["Piano LH Voice"],
)

dynamic_maker = utsu.DynamicMaker(-1)

ottava_handlers = {
    "RH Staff": pang.VerboseOttavaHandler(),
    "LH Staff": pang.VerboseOttavaHandler(),
}

segment_maker = utsu.SegmentMaker(
    name="b",
    metronome_marks=[utsu.metronome_marks["60"], utsu.metronome_marks["60"]],
    time_signatures=[(4, 4), (4, 4)],
    search_trees=[search_tree_rh, search_tree_lh],
    use_full_measures=[False, True],
    dynamic_maker=dynamic_maker,
    ottava_handlers=ottava_handlers,
    clouds=[cloud_rh, cloud_lh],
)

if __name__ == "__main__":
    segment_maker.run()
