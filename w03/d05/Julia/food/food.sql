CREATE TABLE fridges (
  id serial PRIMARY KEY,
  location VARCHAR(50) NOT NULL,
  fridge_brand VARCHAR(50) NOT NULL,
  size INTEGER NOT NULL
);

CREATE TABLE foods (
  id serial PRIMARY KEY,
  food_name VARCHAR(50) NOT NULL,
  weight INTEGER NOT NULL,
  vegan BOOLEAN NOT NULL,
  food_timestamp TIMESTAMP DEFAULT current_timestamp,
  fridge_id INTEGER REFERENCES fridges(id)
);

CREATE TABLE drinks (
  id serial PRIMARY KEY,
  drink_name VARCHAR(50) NOT NULL,
  alcoholic BOOLEAN NOT NULL,
  drink_size INTEGER NOT NULL,
  fridge_id INTEGER REFERENCES fridges(id)
);
