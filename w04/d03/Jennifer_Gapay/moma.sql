DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS paintings;

CREATE TABLE artists (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  nationality varchar(50) NOT NULL
);

CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  artist_id integer REFERENCES artist(id)
);
