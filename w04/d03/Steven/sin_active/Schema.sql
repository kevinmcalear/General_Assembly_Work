CREATE TABLE clowns(
  id serial primary key,
  name varchar(100),
  happiness_level integer,
  creepiness_level integer default 100,
  talent varchar(100),
  is_singer boolean
);


