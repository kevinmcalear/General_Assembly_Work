CREATE TABLE artists (
  id serial PRIMARY KEY,
  name VARCHAR(50),
  nationality VARCHAR(50)
);

CREATE TABLE paintings (
  id serial PRIMARY KEY,
  title VARCHAR(50),
  artist_id INTEGER REFERENCES artists(id)
);