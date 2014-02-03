DROP TABLE IF EXISTS users;

CREATE TABLE users(
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  country varchar(50) NOT NULL
);

CREATE TABLE friends(
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  users_id INTEGER REFERENCES users(id),
  sent_to_id INTEGER REFERENCES sent_to(id)
);

CREATE TABLE sent_to(
  id serial PRIMARY KEY,
  send_photo boolean NOT NULL,
  friends_id INTEGER REFERENCES friends(id),
  photos_id INTEGER REFERENCES photos(id)
);

CREATE TABLE photos(
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  sent_to_id INTEGER REFERENCES sent_to(id)
);