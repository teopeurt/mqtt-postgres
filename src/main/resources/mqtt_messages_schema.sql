DROP TABLE IF EXISTS Messages;

CREATE SEQUENCE Messages_seq;

CREATE TABLE Messages (
  id int check (id > 0) NOT NULL DEFAULT NEXTVAL ('Messages_seq'),
  message bytea NOT NULL,
  topic text NOT NULL,
  quality_of_service smallint NOT NULL,
  PRIMARY KEY (id)
) ;