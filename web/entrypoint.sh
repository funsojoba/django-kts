#!/bin/bash

APP_ROOT=${PORT:-8000}
cd /app/
/opt/venv/bin/gunicorn --worker-tmp-dir /dev/shm DJANGO_K8S.wsgi:application
--bind "0.0.0.0:${APP_PORT}"
