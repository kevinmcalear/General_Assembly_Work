CREATE TABLE musicals(
  id serial primary key,
  title varchar(100),
  composer varchar(100),
  year integer)
  );

CREATE TABLE songs(
  id serial primary key,
  title varchar(100),
  musical_id integer references musicals(id)
  );

CREATE TABLE characters(
  id serial PRIMARY KEY, 
  name varchar(100)
);

CREATE TABLE performances(
  id serial PRIMARY KEY, 
  song_id integer references songs(id),
  character_id integer references characters(id)
);