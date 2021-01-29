import abjad
import utsu
import pang

duration = 80

search_tree_rh = {2: {2: None, 3: None}, 3: None, 5: None, 7: None}
search_tree_lh = {2: {2: None, 3: None}, 3: None, 5: None, 7: None}

pitch_set_rh_higher = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["C"],
    origin=0,
    low=utsu.highest_piano_note // 4,
    high=utsu.highest_piano_note // 2,
)

pitch_set_rh_lower = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["C"], origin=0, low=0, high=utsu.highest_piano_note // 4
)

pitch_set_lh = pang.gen_pitches_from_sieve(
    sieve=utsu.sieves["C"], origin=0, low=utsu.lowest_piano_note, high=0
)


cloud_rh_voice0 = pang.Cloud(
    arate=0.4,
    srate=0.8,
    pitches=pitch_set_rh_higher,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928734,
    voice_names=["Piano RH Voice"],
)


cloud_rh_voice1 = pang.Cloud(
    arate=0.3,
    srate=0.6,
    pitches=pitch_set_rh_lower,
    duration=duration,
    queue_type="D/M/1",
    rest_threshold=0.0,
    seed=234780,
    voice_names=["Piano RH Voice1"],
)


cloud_lh = pang.Cloud(
    arate=1.5,
    srate=2.0,
    pitches=pitch_set_lh,
    duration=duration,
    queue_type="M/M/1",
    rest_threshold=0.0,
    seed=928477773,
    voice_names=["Piano LH Voice"],
)


segment_maker = utsu.SegmentMaker(
    name="a",
    metronome_marks=[
        utsu.metronome_marks["60"],
        utsu.metronome_marks["60"],
        utsu.metronome_marks["60"],
    ],
    time_signatures=[(4, 4), (4, 4), (4, 4)],
    search_trees=[search_tree_rh, search_tree_rh, search_tree_lh],
    use_full_measures=[False, False, False],
    clouds=[cloud_rh_voice0, cloud_rh_voice1, cloud_lh],
    clefs=["treble", "treble", "bass"],
    stem_directions=[abjad.Up, abjad.Down, None],
)

if __name__ == "__main__":
    segment_maker.run()
