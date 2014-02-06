### Travel Log

DROP TABLE IF EXISTS journal;

CREATE TABLE journal (
  id serial PRIMARY KEY,
  city varchar(50) NOT NULL,
  paragraphs integer DEFAULT 1,
  liked_food boolean DEFAULT TRUE,
  liked_attraction boolean DEFAULT TRUE
);

DROP TABLE IF EXISTS cities;

CREATE TABLE cities (
  id serial PRIMARY KEY,
  state varchar(50) NOT NULL,
  weather varchar(50) NOT NULL,
  days_spent integer DEFAULT 1
  famous_food varchar(50) NOT NULL,
  main_attraction varchar(50) NOT NULL
);

ALTER TABLE cities 
ADD CONSTRAINT entry_id 
FOREIGN KEY (entry_id) 
REFERENCES journal(id);