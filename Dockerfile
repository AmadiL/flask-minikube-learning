FROM python:3.7.3-alpine3.9

ADD webapp webapp

RUN pip install --no-cache-dir -r webapp/requirements.txt && \
    pip install gunicorn

EXPOSE 8080

CMD ["gunicorn", "-b", "0.0.0.0:8080", "webapp.webapp:app"]
