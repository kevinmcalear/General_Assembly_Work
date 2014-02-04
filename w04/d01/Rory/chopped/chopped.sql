
CREATE DATABASE chopped_db;

CREATE TABLE judges (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL
);

CREATE TABLE dishes (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  course_id integer REFERENCES courses(id),
  chef_id integer REFERENCES chefs(id)
);

CREATE TABLE chefs(
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL
);

CREATE TABLE dish_ratings(
  id serial PRIMARY KEY,
  rating_value integer NOT NULL,
  dish_id integer REFERENCES dishes(id),  
  judge_id integer REFERENCES judges(id)
);

CREATE TABLE courses(
  id serial PRIMARY KEY,
  round integer NOT NULL,
  ingredient varchar(100) NOT NULL,
);

CREATE TABLE chopping_blocks(
  id serial PRIMARY KEY,
  chef_id integer REFERENCES chefs(id),
  course_id integer REFERENCES courses(id)
);