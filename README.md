# memo_backend

Python 3.8 + Django 3.2 + Postgres 13 + Heroku config

## Description

## Documentation

Use this template to start the backend development of your projects with Django

### Directory tree

```
├── apps
│   ├── main
│   │   ├── fixtures
│   │   │   └── development.json
│   │   ├── migrations
│   │   ├── models
│   │   │   └── __init__.py
│   │   │   └── base_model.py
│   │   ├── tests
│   │   │   └── __init__.py
│   │   ├── __init__.py
│   │   ├── admin.py
│   │   ├── apps.py
│   │   └── views.py
│   └── __init__.py
├── htmlcov
├── memo_backend
│   ├── settings
│   │   ├── partials
│   │   │   └── utils.py
│   │   ├── __init__.py
│   │   ├── common.py
│   │   ├── development.py
│   │   ├── production.py
│   │   └── test.py
│   ├── static
│   ├── __init__.py
│   ├── asgi.py
│   ├── storage_backends.py
│   ├── urls.py
│   └── wsgi.py
├── scripts
│   ├── dev-entrypoint.sh
│   ├── prod-entrypoint.sh
│   └── wait-for-it.sh
├── .coveragerc
├── .editorconfig
├── .envrc
├── .gitignore
├── Dockerfile
├── Makefile
├── README.md
├── docker-compose.override.yml
├── docker-compose.web.yml
├── docker-compose.yml
├── manage.py
├── requirements.txt
└── test-requirements.txt
```

### How to install the template ###

Clone the repository, and update your origin url: 
```
git clone https://github.com/drestrepob/django-heroku.git memo_backend
cd memo_backend
```

Merge the addons required by your project (Optional):
```
git merge origin/celery
```

Rename your project files and directories:
```
make name=memo_backend init
```
> Info: Make is required, for mac run `brew install make`

> After this command you can already delete the init command inside the `Makefile` 

The command before will remove the `.git` folder, so you will have to initialize it again:
```
git init
git remote add origin <repository-url>
```

### How to run the project ###

The project use docker, so just run:

```
docker-compose up
```

> If it's first time, the images will be created. Sometimes the project doesn't run at first time 
> because the init of postgres, just run again `docker-compose up` and it will work.

*Your app will run in url `localhost:8010`*

To recreate the docker images after dependencies changes run:

```
docker-compose up --build
```

To remove the docker containers including the database (Useful sometimes when dealing with migrations):

```
docker-compose down
```

> If you want to delete the information saved on docker volumes you can use `docker-compose down -v`

### Accessing Administration

The django admin site of the project can be accessed at `localhost:8010/admin`

By default, the development configuration creates a superuser with the following credentials:

```
Username: admin
Password: admin
```
