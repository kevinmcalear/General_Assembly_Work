DROP TABLE IF EXISTS travel_log;

CREATE TABLE travel_log (
  id serial PRIMARY KEY,
  entry varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  city varchar(50) NOT NULL,
  date_entered varchar(50) NOT NULL
);