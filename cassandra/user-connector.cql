CREATE KEYSPACE user_connector WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TABLE user_connector.connection_request
(
    recipient_id  uuid,
    requester_id  uuid,
    creation_time timestamp,
    PRIMARY KEY ((recipient_id), requester_id, creation_time)
);

CREATE TABLE user_connector.connection
(
    user1           uuid,
    user2           uuid,
    connection_date timestamp,
    PRIMARY KEY ((user1), user2, connection_date)
);