# Basic Dockerized Drupal 8 Project

This project uses Docker to configure the required dependencies to run Drupal 8. Any themes, profiles, or modules should be placed inside the project's themes, modules, and profiles directory. These directories will be mounted as volumes.

## Installation

In order to run this project first build using:

```
$ docker-compose build
```

Followed by 

```
$ docker-compose up
```

You will be able to access the Drupal installation in your browser at `localhost:8083/`

Configure Drupal using the same database configuration as listed in the docker-compose.yml file. For security purposes it is recommended that you change the database usernames and passwords to be different than the ones committed in this repository. Before using this project in a production environment it would be best to use environment variables for the sensitive information.

## Version 1.0
Project Directories:
`modules`: Include modules to install into Drupal
`profiles`: Scripts to setup profiles
`themes`: Themes to change the way Drupal looks

Included version of Drupal: 8.7.3