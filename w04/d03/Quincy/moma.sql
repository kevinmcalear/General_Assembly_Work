CREATE TABLE artists(
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  nationality varchar(100) NOT NULL
);

CREATE TABLE painting(
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  artist_id integer references artists(id)
);