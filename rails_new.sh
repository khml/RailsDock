#!/bin/bash
cp -i env .env
docker-compose run --rm app rails new . --force --no-deps --database=mysql

