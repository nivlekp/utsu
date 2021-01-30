import abjad

highest_piano_note = 48
lowest_piano_note = -39
highest_note_without_octava = 31
lowest_note_without_octava = -25

sieves = abjad.OrderedDict(
    [
        ("A", abjad.Pattern(indices=[0, 1, 4], period=5)),
        ("B", abjad.Pattern(indices=[0, 3, 5, 9, 10], period=11)),
        ("C", abjad.Pattern(indices=[0, 1, 2, 4, 8, 10, 11], period=13)),
    ]
)

metronome_marks = abjad.OrderedDict(
    [
        ("60", abjad.MetronomeMark((1, 4), 60)),
        ("72", abjad.MetronomeMark((1, 4), 72)),
    ]
)
