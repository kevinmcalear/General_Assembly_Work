CREATE TABLE judges(
  id serial primary key,
  name varchar(50)
);

CREATE TABLE chefs(
  id serial primary key,
  name varchar(50),
);

CREATE TABLE courses(
  id serial primary key,
  round integer,
  ingredients varchar(100)
);

CREATE TABLE dishes(
  id serial primary key,
  name varchar(50),
  course_id integer references courses(id),
  chef_id integer references chefs(id)
);

CREATE TABLE ratings(
  id serial primary key,
  rating integer,
  dish_id integer references dishes(id),
  judge_id integer references judges(id)
);

CREATE TABLE chopping_blocks(
  id serial primary key,
  chef_id integer references chefs(id),
  course_id integer references courses(id)
);

