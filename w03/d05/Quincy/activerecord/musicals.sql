CREATE TABLE musicals(
  id serial primary key
  title varchar(100),
  composer varchar(100),
  year integer
);

CREATE TABLE songs(
id serial primary key,
title varchar(100),
musical_id integer references musicals(id)
);

CREATE TABLE characters(

)