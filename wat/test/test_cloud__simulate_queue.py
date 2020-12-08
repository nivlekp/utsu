import wat


def test_cloud__simulate_queue_00():
    arate = 1
    srate = 2
    duration = 10
    pitches = [i - 7 for i in range(30)]
    cloud = wat.Cloud(
        arate=arate,
        srate=srate,
        pitches=pitches,
        duration=duration,
        queue_type="M/M/1",
        rest_threshold=0.2,
    )

    number_of_notes = cloud._nnotes
    assert number_of_notes == duration * arate

    cloud._instances = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    cloud._durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
    cloud._simulate_queue()
    assert cloud._durations == [
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
        0.5,
    ], print(cloud._durations)
