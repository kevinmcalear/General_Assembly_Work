#photo_management_app.sql

CREATE TABLE clients (
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
    email varchar(50) NOT NULL,
);

CREATE TABLE albums (
  id serial PRIMARY KEY,
  event_type varchar(50) NOT NULL,
  client_id integer references clients(id)
);

CREATE TABLE photos (
  id serial  PRIMARY KEY,
  imgname varchar(50),
  img bytea,
  album_id references albums(id)
);

