from app.api import ping


def test_ping():
    assert ping() == 'pong'
