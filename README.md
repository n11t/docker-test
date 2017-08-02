# Docker Test

This repo is a playground to work with docker and php and to set up a dev-environment.

## Usage

### Start
To bring up the container use [docker-compose](https://docs.docker.com/compose/).
Also you need to migrate the database and run the init-script.

```
$ docker-compose up -d
$ ./database.sh migrate
$ docker-compose run -w /app php init.sh
```

### Website

Just open [http://localhost:8080/](http://localhost:8080/) or [http://localhost:8080/blog](http://localhost:8080/blog) to see the result.

### Stop

```
$ docker-compose stop
```

### Cleanup

```
$ docker-compose rm
```

## Tests

To run the unit-test use the tests.sh script

```
$ ./tests.sh
```

## xDebug

To enable xDebug use `dev` as the session key. Current port is `9001`.

If you want to change xDebug values see `docker/config/php/xdebug.ini`.

## TODO

1. mail

