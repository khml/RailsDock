#!/bin/bash
cp -i env .env
docker-compose run app rails new . --force --no-deps --database=mysql

