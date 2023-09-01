#!/bin/sh
# Collect static files
python3 spa/manage.py collectstatic --noinput
# Apply database migrations
python3 spa/manage.py migrate
# Start server with debug mode
python3 spa/manage.py runserver 0.0.0.0:8000