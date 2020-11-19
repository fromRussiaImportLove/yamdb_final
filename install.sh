#!/bin/bash

# git clone https://github.com/fromRussiaImportLove/infra_sp2.git
# cd infra_sp2
# vim .env 
docker-compose -d up
docker-compose run web python manage.py migrate
docker-compose run web python manage.py loaddata fixtures.json
