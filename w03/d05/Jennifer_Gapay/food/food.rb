

# CREATE TABLE fridges (
#   id SERIAL PRIMARY KEY,
#   fridge_name VARCHAR(50),
#   location VARCHAR(50),
#   brand VARCHAR(50),
#   cubic_feet integer DEFAULT 4.4
#   );


# CREATE TABLE app (
#   id SERIAL PRIMARY KEY,
#   fridges_id integer references fridges(id));


# CREATE TABLE drinks (
#   id SERIAL PRIMARY KEY,
#   drink_name VARCHAR(50),
#   ounces integer DEFAULT 1,
#   alcohol BOOLEAN,
#   fridges_id integer references fridges(id)
#   );

# CREATE TABLE food (
#   id SERIAL PRIMARY KEY,
#   food_name VARCHAR(50),
#   weight integer DEFAULT 1,
#   vegan BOOLEAN,
#   timestamp date DEFAULT current_date,
#   fridges_id integer references fridges(id)
#   );


