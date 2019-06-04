from webapp import webapp
from pytest import approx
import datetime


def test_time():
    response = webapp.app.test_client().get('/time')
    data = response.get_data(as_text=True)
    time_now = datetime.datetime.now().timestamp()
    assert response.status_code == 200
    assert datetime.datetime.fromisoformat(data).timestamp() == approx(time_now, abs=1)
