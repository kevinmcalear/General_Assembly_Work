DROP TABLE IF EXISTS olympics;

CREATE TABLE olympics (
  id serial PRIMARY KEY,
  sport varchar(50) NOT NULL,
  team boolean DEFAULT TRUE,
  gender varchar(50) NOT NULL,
  countries integer DEFAULT 3,
);

DROP TABLE IF EXISTS figure_skating;

CREATE TABLE figure_skating (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  sport varchar(50) NOT NULL,
  age integer DEFAULT 16,
  country varchar(50) NOT NULL,
  score integer DEFAULT 0 
);

SELECT olympics.sport, figure_skating.name, figure_skating.age,figure_skating.score,
FROM olympics, figure_skating
INNER JOIN figure_skating
ON olympics.sport=figure_skating.sport;