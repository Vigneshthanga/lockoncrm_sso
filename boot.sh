#!/bin/sh -e

# start service discovery task in the background
#if [ "$SERVICE_URL" != "/login" ]; then
#    python -c "from lockoncrm_common.container import register; register()" &
#fi

# run web server
exec gunicorn -b 0.0.0.0:5000 --access-logfile gunicorn-access.log --error-logfile error.log - app:app
