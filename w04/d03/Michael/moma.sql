DROP TABLE if EXISTS artists; 
DROP TABLE if EXISTS paintings;


CREATE TABLE artists (id serial PRIMARY KEY, name varchar(50), nationality varchar(50));

CREATE TABLE paintings (id serial PRIMARY KEY, 
title varchar(50), artist_id integer references artists(id));