import wat


def test_noteserver_00():
    server = wat.NoteServer()
    index, offset_instance = wat.tools._get_closest_server([server])
    assert index == 0
    assert offset_instance == 0.0


def test_noteserver_01():
    server0 = wat.NoteServer()
    server1 = wat.NoteServer()
    server0._offset_instance = 2.0
    server1._offset_instance = 1.0
    index, offset_instance = wat.tools._get_closest_server([server0, server1])
    assert index == 1
    assert offset_instance == 1.0
