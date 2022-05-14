CREATE KEYSPACE IF NOT EXISTS announcement_board WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TABLE IF NOT EXISTS announcement_board.announcement
(
    author_id     uuid,
    creation_time timestamp,
    content       text,
    PRIMARY KEY ((author_id), creation_time)
);

CREATE TABLE IF NOT EXISTS announcement_board.comments_count
(
    announcement_author_id     uuid,
    announcement_creation_time timestamp,
    comments_count             counter,
    PRIMARY KEY ((announcement_author_id), announcement_creation_time)
);

CREATE TABLE IF NOT EXISTS announcement_board.comment
(
    announcement_author_id     uuid,
    announcement_creation_time timestamp,
    author_id                  uuid,
    author_nickname            text,
    creation_time              timestamp,
    content                    text,
    PRIMARY KEY ((announcement_author_id, announcement_creation_time), creation_time, author_id)
);

CREATE TABLE IF NOT EXISTS announcement_board.user
(
    id       uuid,
    nickname text,
    name     text,
    surname  text,
    PRIMARY KEY (id)
);
