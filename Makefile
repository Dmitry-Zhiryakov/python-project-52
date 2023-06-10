install:
	poetry install

dev:
	poetry run python manage.py runserver

PORT ?= 8000
start:
	pip install setuptools
	poetry run gunicorn -w 5 -b 0.0.0.0:$(PORT) task_manager.wsgi