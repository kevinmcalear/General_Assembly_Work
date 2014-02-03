---------------------------
------- Travel Log ----------
---------------------------

CREATE TABLE locations (
  id serial PRIMARY KEY, 
  name varchar(50) NOT NULL
);

CREATE TABLE entries (
  id serial PRIMARY KEY,
  entry_date date NOT NULL,
  entry_text text NOT NULL
  location_id integer REFERENCES locations(id)
);

---------------------------
------ Photographer --------
---------------------------

CREATE TABLE clients (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE albums (
  id serial PRIMARY KEY,
  event_name varchar(50) NOT NULL
  album_date date,
  client_id integer REFERENCES clients(id)
);

CREATE TABLE photographs (
  id serial PRIMARY KEY,
  photo_url varchar(50) NOT NULL,
  album_id integer REFERENCES albums(id)
);

---------------------------
------ Figure Skating --------
---------------------------

CREATE TABLE judges (
  id serial PRIMARY KEY,
  judge_name varchar(50) NOT NULL
);

CREATE TABLE scores (
  id serial PRIMARY KEY,
  score integer NOT NULL
  judge_id integer REFERENCES judges(id) NOT NULL,
  skater_id integer REFERENCES skaters(id) NOT NULL,
);

CREATE TABLE skaters (
  id serial PRIMARY KEY,
  skater_name varchar(50) NOT NULL
);

---------------------------
-------- Snapchat ----------
---------------------------

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(50) NOT NULL,
);

CREATE TABLE friendships (
  id serial PRIMARY KEY,
  user_id integer REFERENCES users(id),
  friend_id integer REFERENCES users(id)
);

CREATE TABLE snaps (
  id serial PRIMARY KEY,
  photo_url varchar(50) NOT NULL,
  length integer NOT NULL,
  sender_id integer REFERENCES users(id),
  receiver_id integer REFERENCES users(id)
);