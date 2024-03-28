#!/bin/sh
set -e

python manage.py collectstatic --noinput
python manage.py showmigrations
python manage.py migrate
python manage.py runserver 0.0.0.0:8080
# gunicorn --chdir /app -c /app/gunicorn/gunicorn_config.py djangoweather.wsgi:application
