#!/bin/bash
COMMAND=${1:-migrate}

COMPOSE_PREFIX=${PWD##*/}
NETWORK_NAME="${COMPOSE_PREFIX}_database"
MIGRATIONS_DIR="${PWD}/migrations"

flyway() {
  docker run -it --rm --network="$NETWORK_NAME" -v $MIGRATIONS_DIR:/flyway/sql shouldbee/flyway -url=jdbc:mysql://db:3306/dev -user=dev -password=dev $@
}

case "$COMMAND" in
  "migrate" )
    echo "Migrate database..."
    flyway migrate
    ;;
  * )
    echo "Invalid parameter '$1'..."
esac
