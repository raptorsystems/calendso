#!/bin/sh
set -x

/app/scripts/wait-for-it.sh ${DATABASE_URL} -- echo "db is up"
npx prisma migrate deploy
yarn start
