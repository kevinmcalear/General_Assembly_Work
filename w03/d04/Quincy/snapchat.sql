DROP TABLE IF EXISTS friends;

CREATE TABLE friends (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  phone_number integer DEFAULT 1,
  date_added date DEFAULT current_date
  );

DROP TABLE IF EXISTS photo;

CREATE TABLE photo (
  id serial PRIMARY KEY,
  friend varchar(50) NOT NULL,
  photo? boolean DEFAULT TRUE,
);