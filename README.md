# alchemy-cms.com website

### Prerequisites/Requirements

* Ruby 2.1
* Imagemagick
* MySQL >= 5

### Setup local development

**Configuring the database**

```
$ cp config/database.yml.example config/database.yml
$ cp .env.example .env
```

and adjust to your local environment

### Setup database

```
$ mysql -u root alchemy-cms.com < db/dump.sql
```

### Start development server

```
$ bin/rails server
```

### Admin login

```
login: admin
password: test123
```

### Deployment

Deployment happens via Capistrano.

If you have access to the server via your ssh key a simple:

    $ bundle exec cap deploy

is all you need.
