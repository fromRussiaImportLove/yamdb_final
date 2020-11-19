# YamDB

It's API for multiple user reviews system about any categories and scoring item.
For example, it's can be used for scoring films, books, music.
Users can review items, and other users can comment any reviews.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

What things you need to install the software and how to install them

```
[https://docker.com](docker 19.03+)
[https://docs.docker.com/compose/install/](docker-compose 1.25.0+)
[https://python.org](python 3.8+)
```

### Installing

For install you need clone repository, configure .env for settings, build docker containers, run services, make migrations, load dump from fixtures, and if need make new superuser.

You can just start my bash-script ./install.sh

or make these commands:

```
git clone https://github.com/fromRussiaImportLove/infra_sp2.git
cd infra_sp2
vim .env # for making environment
docker-compose -d up
docker-compose run web python manage.py migrate
docker-compose run web python manage.py loaddata fixtures.json
```

If your need create new superuser
```
docker-compose run web python manage.py createsuperuser
```

For check correct installation, open in browser link: http://127.0.0.1:8000/api/v1/

## Security Note

For security reason you have edit .env file before build image. 


## Built With

* Django 3.0 [https://www.djangoproject.com/]
* Django-REST-Framework 3.11 [django-rest-framework.org]

## Contributing

If you want contribute, do it. 

## Author

Patsy Charmer. My git (there)[https://github.com/fromRussiaImportLove]

