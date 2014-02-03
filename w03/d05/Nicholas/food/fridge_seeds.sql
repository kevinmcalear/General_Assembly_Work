CREATE TABLE fridges(
  id serial PRIMARY KEY,
  location varchar(50),
  brand varchar(50),
  cubic_feet integer
);

CREATE TABLE foods(
  id serial PRIMARY KEY,
  name varchar(100),
  weight integer,
  vegan boolean,
  fridge_id integer references fridges(id),
  time timestamp
);

CREATE TABLE drinks(
  id serial PRIMARY KEY,
  name varchar(100),
  size integer,
  alcoholic boolean,
  fridge_id integer references fridges(id)
);