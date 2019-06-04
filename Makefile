# General
WORKSPACE := $(shell pwd)

# App
APP = webapp/webapp.py

# Docker
TAG = latest
APP_IMAGE = amadil/test-webapp-gunicorn:$(TAG)

install:
	pip install -r app/requirements.txt

run-develop:
	FLASK_ENV=development FLASK_APP=$(APP) flask run

run-prod:
	# Change to Gunicorn
	FLASK_APP=$(APP) flask run

test:
	pytest webapp/

docker-build:
	docker build -t $(APP_IMAGE) .
