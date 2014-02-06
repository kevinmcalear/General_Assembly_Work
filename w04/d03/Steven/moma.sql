CREATE TABLE artists (id serial primary key, 
  name varchar(50), nationality varchar(50));


CREATE TABLE paintings (id serial primary key, 
  title varchar(50), artist_id integer references artists(id));