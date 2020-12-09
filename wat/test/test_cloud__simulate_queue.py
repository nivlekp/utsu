import numpy as np


import wat


def test_cloud__simulate_queue_00():
    arate = 1
    srate = 2
    duration = 10
    pitches = [0]
    cloud = wat.Cloud(
        arate=arate,
        srate=srate,
        pitches=pitches,
        duration=duration,
        queue_type="M/M/1",
        rest_threshold=0.0,
    )

    number_of_notes = cloud._nnotes
    assert number_of_notes == duration * arate

    cloud._instances = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    cloud._durations = [0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
    cloud._simulate_queue()
    np.testing.assert_almost_equal(
        cloud.durations,
        [
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
        ],
    )

    assert cloud.pitches == [
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
    ]


def test_cloud__simulate_queue_01():
    arate = 1
    srate = 2
    duration = 10
    pitches = [0]
    cloud = wat.Cloud(
        arate=arate,
        srate=srate,
        pitches=pitches,
        duration=duration,
        queue_type="M/M/1",
        rest_threshold=0.0,
    )

    number_of_notes = cloud._nnotes
    assert number_of_notes == duration * arate

    cloud._instances = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    cloud._durations = [2.1, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5]
    cloud._simulate_queue()
    np.testing.assert_almost_equal(
        cloud.durations,
        [
            2.1,
            0.5,
            0.5,
            0.5,
            0.4,
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
        ],
    )

    assert cloud.pitches == [
        0,
        0,
        0,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
        None,
        0,
    ]
