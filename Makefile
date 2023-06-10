install:
	poetry install

dev:
	poetry run python manage.py runserver

start:
	pip install setuptools
	gunicorn task_manager.wsgi
