#!/bin/sh

wait_for_cassandra () {
  while ! docker  logs cassandra | grep -q "Starting listening for CQL clients on"; do
      sleep 1
  done
}

initialize_cassandra_schema () {
  echo "Initializing cassandra schema"

  for schema_file in  ./cassandra/announcement-board.cql \
                      ./cassandra/message-box.cql \
                      ./cassandra/timeline.cql \
                      ./cassandra/user-connector.cql
  do
    if [ -f $schema_file ]
    then
      echo "Loading schema from $schema_file"
      docker exec -i cassandra cqlsh < $schema_file
    else
      warn "$schema_file was not found"
    fi
  done
}

main () {
  echo "Starting"
  wait_for_cassandra
  initialize_cassandra_schema
}

main