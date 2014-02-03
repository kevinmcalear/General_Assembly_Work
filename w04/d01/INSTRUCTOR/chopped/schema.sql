CREATE TABLE judges(
  id serial PRIMARY KEY, 
  name varchar(50)
);

CREATE TABLE courses(
  id serial PRIMARY KEY, 
  round integer, 
  ingredient varchar(250)
);

CREATE TABLE chefs(
  id serial PRIMARY KEY, 
  name varchar(50)
);

CREATE TABLE dishes(
  id serial PRIMARY KEY, 
  name varchar(50), 
  course_id integer references courses(id), 
  chef_id integer references chefs(id)
);

CREATE TABLE chopping_blocks(
  id serial PRIMARY KEY, 
  course_id integer references courses(id), 
  chef_id integer references chefs(id)
);

CREATE TABLE dish_ratings(
  id serial PRIMARY KEY, 
  score integer, 
  dish_id integer references dishes(id), 
  judge_id integer references judges(id)
);