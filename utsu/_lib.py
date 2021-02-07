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
    [("60", abjad.MetronomeMark((1, 4), 60)), ("72", abjad.MetronomeMark((1, 4), 72))]
)


def make_score_template():
    piano_RH_staff = abjad.Staff(
        [abjad.Voice(name="Piano RH Voice1"), abjad.Voice(name="Piano RH Voice")],
        name="RH Staff",
        simultaneous=True,
    )
    piano_RH_staff.remove_commands.append("Time_signature_engraver")
    dynamics_staff = abjad.Context(lilypond_type="Dynamics", name="Dynamics")
    piano_LH_staff = abjad.Staff(
        [abjad.Voice(name="Piano LH Voice")],
        name="LH Staff",
    )
    piano_LH_staff.remove_commands.append("Time_signature_engraver")
    staff_group = abjad.StaffGroup(
        [piano_RH_staff, dynamics_staff, piano_LH_staff],
        name="Piano Staff Group",
    )
    score = abjad.Score(
        [staff_group],
        name="Piano Score",
    )
    return score

class DynamicMaker(object):
    """
    Dynamic Maker.
    """
    def __init__(self, average_intensity):
        self._average_intensity = average_intensity

    def __call__(self, score, segment_length):
        self._segment_length = segment_length
        dynamic_context = score["Dynamics"]
        rests = [abjad.Skip("s1") for _ in range(self._segment_length)]
        dynamic_context.extend(rests)
        abjad.attach(abjad.Dynamic("f"), dynamic_context[0])

    @property
    def average_intensity(self):
        return self._average_intensity
