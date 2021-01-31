import abjad


class ScoreTemplate(abjad.ScoreTemplate):
    """
    Score Template
    """

    def __call__(self):
        piano_RH_staff = abjad.Staff(
            [abjad.Voice(name="Piano RH Voice1"), abjad.Voice(name="Piano RH Voice")],
            name="RH Staff",
            simultaneous=True,
        )
        piano_LH_staff = abjad.Staff(
            [abjad.Voice(name="Piano LH Voice")], name="LH Staff",
        )
        staff_group = abjad.StaffGroup(
            [piano_RH_staff, piano_LH_staff], name="Piano Staff Group",
        )
        score = abjad.Score([staff_group], name="Piano Score",)
        return score
