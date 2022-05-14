CREATE KEYSPACE IF NOT EXISTS timeline WITH REPLICATION = { 'class' : 'SimpleStrategy', 'replication_factor' : 1 };

CREATE TABLE IF NOT EXISTS timeline.timeline_item
(
    owner_id               uuid,
    announcement_author_id uuid,
    creation_time          timestamp,
    PRIMARY KEY ((owner_id), creation_time, announcement_author_id)
) WITH CLUSTERING ORDER BY (creation_time DESC);
