DROP TABLE IF EXISTS superheroes;

CREATE TABLE superheroes (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  alter_ego varchar(50) NOT NULL,
  cape varchar(50),
  power varchar(50) NOT NULL,
  arch_nemesis varchar(50) NOT NULL
);