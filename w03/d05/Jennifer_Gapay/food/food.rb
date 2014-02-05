CREATE TABLE judges (
  id SERIAL PRIMARY KEY,
  judge_name VARCHAR(50)
  );

CREATE TABLE chefs (
  id SERIAL PRIMARY KEY,
  judge_name VARCHAR(50)
  );

CREATE TABLE course (
  id SERIAL PRIMARY KEY,
  round VARCHAR(50),
  ingredient VARCHAR(50)
  );

CREATE TABLE dishes (
  id SERIAL PRIMARY KEY,
  dish_name VARCHAR(50),
  chefs_id integer references chefs(id),
  course_id integer references course(id)
);

CREATE TABLE ratings (
  id SERIAL PRIMARY KEY,
  ratings_value VARCHAR(50),
  dishes_id integer references dishes(id),
  judges_id integer references judges(id)
);

CREATE TABLE chop_blocks (
  id SERIAL PRIMARY KEY,
  chef_id integer references chef(id),
  course_id integer references course(id)
);



