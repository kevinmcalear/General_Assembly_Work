CREATE TABLE artists (
  id serial primary key,
  name varchar(100),
  nationality varchar(100)
);

CREATE TABLE paintings (
  id serial primary key,
  title varchar(100),
  artist_id integer references artists(id)
);

