DROP TABLE IF EXISTS figure_skaters;

CREATE TABLE figure_skaters(
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  scores_id INTEGER REFERENCES scores(id)
);

CREATE TABLE scores (
  id serial PRIMARY KEY,
  score integer NOT NULL,
  figure_skaters_id INTEGER REFERENCES figure_skaters(id),
  judges_id INTEGER REFERENCES judges(id)
);

CREATE TABLE judges (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  scores_id INTEGER REFERENCES scores(id)
);