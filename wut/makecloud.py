import abjad
from abjadext import nauert
from cloud import Cloud

def make_cloud():
    srate = 0.2
    arate = 1
    dur = 10
    pitches = [i-7 for i in range(30)]
    cloud = Cloud(arate=arate,
        srate=srate,
        pitches=pitches,
        duration=dur,
        #seed=92837947
        #seed=289374
        seed=16397876
        #seed=2891374
        )
    durations = cloud.durations_in_millesecond
    print(durations)
    pitches = cloud.pitches
    print(pitches)
    q_event_sequence = \
        nauert.QEventSequence.from_millisecond_pitch_pairs(
        tuple(zip(durations, pitches)))
    quantizer = nauert.Quantizer()
    result = quantizer(q_event_sequence)
    staff = abjad.Staff([result])
    score = abjad.Score([staff])
    abjad.show(score)

if __name__ == "__main__":
    make_cloud()
