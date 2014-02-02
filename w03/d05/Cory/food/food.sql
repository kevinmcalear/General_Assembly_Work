CREATE TABLE fridges (
  id serial PRIMARY KEY, 
  location varchar(50) NOT NULL, 
  brand varchar(50) NOT NULL, 
  size integer);

CREATE TABLE foods (
  id serial PRIMARY KEY, 
  name varchar(50) NOT NULL, 
  weight integer,
  vegan bool,
  date_entered timestamp DEFAULT current_timestamp
);

CREATE TABLE drinks (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  size integer,
  alcoholic bool
);

ALTER TABLE foods ADD COLUMN fridge_id integer references fridges(id);

ALTER TABLE drinks ADD COLUMN fridge_id integer references fridges(id);
