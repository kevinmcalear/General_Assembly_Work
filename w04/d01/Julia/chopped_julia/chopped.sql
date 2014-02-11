CREATE TABLE judges(
  id serial PRIMARY KEY,
  judge_name VARCHAR(50)
);

CREATE TABLE dishes(
  id serial PRIMARY KEY,
  dish_name VARCHAR(50),
  course_id INTEGER REFERENCES courses(id),
  chef_id INTEGER REFERENCES chefs(id)
);

CREATE TABLE chefs(
  id serial PRIMARY KEY,
  chef_name VARCHAR(50)
);

CREATE TABLE dish_ratings(
  id serial PRIMARY KEY,
  score INTEGER,
  dish_id INTEGER REFERENCES dishes(id),
  judge_id INTEGER REFERENCES judges(id)
);

CREATE TABLE courses(
  id serial PRIMARY KEY,
  ingredient VARCHAR(50)
);

CREATE TABLE chopping_block(
  id serial PRIMARY KEY,
  course_id INTEGER REFERENCES courses(id)
);