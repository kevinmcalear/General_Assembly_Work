DROP TABLE IF EXISTS players;
DROP TABLE IF EXISTS superhero;

CREATE TABLE superhero (
  id serial PRIMARY KEY,
  superhero_name varchar(50) NOT NULL,
  alter_ego varchar(50),
  has_cape boolean, 
  power varchar(50) NOT NULL, 
  arch_nemesis varchar(50)
);