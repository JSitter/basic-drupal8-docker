# Basic Dockerized Drupal 8 Project

This project allows for the ease of module, profile, and theme development by allowing Docker to take care of running and configuring Apache and MySql. Any themes, profiles, or modules should be placed inside this project's themes, modules, and profiles directory. These directories will be mounted as volumes.

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
Certain directories have been made available as volumes in order to view changes to developed projects. These folders will be mounted to the appropriate directories in the Drupal installation.

`modules`: Include modules to install into Drupal
`profiles`: Scripts to setup profiles
`themes`: Themes to change the way Drupal looks

Included version of Drupal: 8.7.3

## License
MIT