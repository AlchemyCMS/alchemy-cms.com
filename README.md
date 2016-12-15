# alchemy-cms.com website

### Prerequisites/Requirements

* Ruby 2.2
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

### Provision server

Make sure you have Ansible installed. On a mac:

    $ brew install ansible

Provisioning is as easy as:

    $ ansible-playbook -i hosts playbooks/production.yml --ask-vault-pass --ask-become-pass

### Deployment

Deployment happens via Capistrano.

If you have access to the server via your ssh key a simple:

    $ bundle exec cap deploy DEPLOY_USER=<user> SSH_PORT=<port>

is all you need.
