#!/bin/bash
set -e

if [ "$1" = 'sh' ]; then
    exec sh
else
    exec python manage.py runserver 0.0.0.0:8000
    exit
fi
