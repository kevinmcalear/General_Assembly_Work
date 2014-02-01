Library
-someone elses work
-API
-gem
-choosing a library

ACTIVE RECORD 
It's a part of RoR

orm
attributes ---> columns
instances ----> rows

Active record creates its own methods according to what you feed it

CREATE TABLE musicals(
  id serial primary key,
  title varchar(100),
  composer varchar(100),
  year integer
);

CREATE TABLE songs(
  id serial primary key,
  title varchar(100),
  musical_id integer references musicals(id)
);

sound_of_music.songs.create(title: "favorite things")








