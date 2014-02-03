DROP TABLE IF EXISTS photos;

CREATE TABLE photos (
  id serial PRIMARY KEY,
  photo_name varchar(50) NOT NULL,
  events_id INTEGER REFERENCES clients(id)
);

CREATE TABLE events (
  id serial PRIMARY KEY,
  date_taken varchar(50) NOT NULL,
  event_type varchar(50) NOT NULL,
  clients_id INTEGER REFERENCES clients(id)
);

CREATE TABLE clients (
  id serial PRIMARY KEY,
  client_name varchar(50) NOT NULL
);

