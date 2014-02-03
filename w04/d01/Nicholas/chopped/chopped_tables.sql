# Dbase name chopped

CREATE TABLE judges(
  id serial primary key,
  name varchar(100)
);

CREATE TABLE chefs(
  id serial primary key,
  name varchar(100),
  is_chopped boolean  
);

CREATE TABLE courses(
  id serial primary key,
  round integer,
  ingredient varchar(50)
);

CREATE TABLE dishes(
  id serial primary key,
  name varchar(100),
  course_id integer references courses(id),
  chef_id integer references chefs(id)
);

CREATE TABLE dish_ratings(
  id serial primary key,
  rating integer,
  dish_id integer references dishes(id),
  judge_id integer references judges(id)
);

CREATE TABLE chopping_block(
  id serial primary key,
  chef_id integer references chefs(id),
  course_id integer references courses(id)
);