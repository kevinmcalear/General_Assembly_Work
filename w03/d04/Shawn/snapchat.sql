#snapchat.sql

CREATE TABLE users (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
);

CREATE TABLE photos (
  id serial PRIMARY KEY,
  imgcaption varchar(50),
  img bytea,
  user_id references users(id)
);

CREATE TABLE facilitate_photo_exchange (
  id serial PRIMARY KEY,
  from_user integer references users(id),
  to_user integer references users(id),
  image_to_send integer references photos(id)
);

