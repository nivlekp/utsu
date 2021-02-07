import pang
import utsu

duration = 80

search_tree_rh = {2: {2: None, 3: None}, 3: {2: None}, 5: None, 7: None}
search_tree_lh = {2: {2: None, 3: None}, 3: {2: None}, 5: None, 7: None}

sieve = (utsu.sieves["C"] & utsu.sieves["B"]) | utsu.sieves["A"]

pitch_set_rh = pang.gen_pitches_from_sieve(
    sieve=sieve,
    origin=0,
    low=utsu.highest_piano_note // 2,
    high=utsu.highest_piano_note,
)

pitch_set_lh = pang.gen_pitches_from_sieve(
    sieve=sieve, origin=0, low=-7, high=utsu.highest_piano_note // 2
)


cloud_rh_voice = pang.Cloud(
    arate=0.4,
    srate=0.8,
    pitches=pitch_set_rh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=81568,
    voice_names=["Piano RH Voice"],
)

cloud_lh = pang.Cloud(
    arate=0.4,
    srate=0.8,
    pitches=pitch_set_lh,
    duration=duration,
    queue_type="D/D/1",
    rest_threshold=0.0,
    seed=774686841,
    voice_names=["Piano LH Voice"],
)


with_ottava = {"RH Staff": 1, "LH Staff": 0}

dynamic_maker = utsu.DynamicMaker(0)

segment_maker = utsu.SegmentMaker(
    name="d",
    metronome_marks=[
        utsu.metronome_marks["60"],
        utsu.metronome_marks["60"],
    ],
    time_signatures=[(4, 4), (4, 4)],
    search_trees=[search_tree_rh, search_tree_lh],
    use_full_measures=[False, False],
    clouds=[cloud_rh_voice, cloud_lh],
    clefs=[None, "treble"],
    with_ottava=with_ottava,
    dynamic_maker=dynamic_maker,
)


if __name__ == "__main__":
    segment_maker.run()
