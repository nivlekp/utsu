import abjad

voice = abjad.Voice(r"ef'16 ~ ef'16 ~ ef'16 ~ ef'16 ~ ef'16 r16 r16 r16 r4 r4")
logical_tie = voice[0]._get_logical_tie()
logical_tie._fuse_leaves_by_immediate_parent()
abjad.show(voice)
