DROP TABLE IF EXISTS superhero;

CREATE TABLE superhero (
  id serial PRIMARY KEY,
  superhero_name varchar(50) NOT NULL,
  alter_ego varchar(50) NOT NULL,
  has_cape varchar(50) NOT NULL,
  power varchar(50) NOT NULL,
  arch_nemesis varchar(50) NOT NULL
);
