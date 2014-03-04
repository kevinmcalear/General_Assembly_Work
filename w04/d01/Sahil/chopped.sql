CREATE TABLE judges (
 id serial primary key,
 name varchar(50) 
);
CREATE TABLE courses(
 id serial primary key,
 round varchar(50),
 ingredient varchar(50)
);
CREATE TABLE chefs (
  id serial primary key,
  name varchar(50) 
);

CREATE TABLE dishes (
 id serial primary key,
 name varchar(50),
 course_id integer references courses(id),
 chef_id integer references chefs(id)
);
CREATE TABLE chopping_block (
 id serial primary key,
 chef_id integer references chefs(id),
 course_id integer references courses(id)
);
CREATE TABLE dish_ratings (
 id serial primary key,
 rating_value integer,
 dish_id integer references dishes(id),
 judge_id integer references judges(id)
);