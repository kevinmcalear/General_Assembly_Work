DROP TABLE IF EXISTS place;

CREATE TABLE place (
  id serial PRIMARY KEY,
  city varchar(50) NOT NULL,
  country varchar(50) NOT NULL
);

