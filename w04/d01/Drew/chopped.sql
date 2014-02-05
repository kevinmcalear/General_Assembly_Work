CREATE TABLE judges(
  id serial primary key,
  name varchar(50) NOT NULL
);

CREATE TABLE courses(
  id serial primary key,
  round integer,
  ingrediant varchar(50),
);

CREATE TABLE chefs(
  id serial primary key,
  name varchar(50) NOT NULL,
);

CREATE TABLE dishes(
  id serial primary key,
  name varchar(50) NOT NULL,
  course_id integer references course(id),
  chef_id integer references chef(id)
);

CREATE TABLE chopping_block(
  id serial primary key,
  course_id integer references course(id),
  chef_id integer references chef(id)
);

CREATE TABLE dish_ratings(
  id serial primary key,
  rating integer NOT NULL,
  course_id integer references course(id),
  chef_id integer references chef(id)
);