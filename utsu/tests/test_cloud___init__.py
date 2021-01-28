import numpy as np

import utsu


def test_cloud___init___01():
    cloud = utsu.Cloud()


def test_cloud___init___02():
    cloud = utsu.Cloud(arate=1, srate=1, duration=10, queue_type="D/D/1")
    assert cloud.number_of_notes == 10
    np.testing.assert_almost_equal(
        cloud.arrival_instances,
        [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    )
    np.testing.assert_almost_equal(
        cloud.durations,
        [1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    )
