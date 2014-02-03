CREATE DATABASE travel_log_db;

CREATE TABLE places (id serial PRIMARY KEY, city varchar(50), country varchar(50));

CREATE TABLE entries (id serial PRIMARY KEY, date date NOT NULL, entry varchar(1000), place_id integer REFERENCES places(id));


--------------------

CREATE DATABASE photo_app_db;

CREATE TABLE events (id serial PRIMARY KEY, date date NOT NULL);

CREATE TABLE photos (id serial PRIMARY KEY, photo_address varchar(100), event_id integer REFERENCES events(id));

--------------------

CREATE DATABASE figure_skating_db;

CREATE TABLE skaters (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE judges (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE performances (id serial PRIMARY KEY, performance timestamp NOT NULL, skater_id integer REFERENCES skaters(id));

CREATE TABLE scores (id serial PRIMARY KEY, score integer, judge_id integer REFERENCES judges(id), performance_id REFERENCES perfromances(id));

--------------------

CREATE DATABASE snapchat_db;

CREATE TABLE users (id serial PRIMARY KEY, user_name varchar(50) NOT NULL, phone_number integer NOT NULL);

CREATE TABLE connections (id serial PRIMARY KEY, user_id1 integer REFERENCES users(id), user_id2 integeter REFERENCES users(id));

CREATE TABLE connections (id serial PRIMARY KEY, user_id1 integer REFERENCES users(id), user_id2 integeter REFERENCES users(id));

CREATE TABLE pictures (id serial PRIMARY KEY, picture varchar(50), connection_id integer REFERENCES connections(id), user_id integeter REFERENCES users(id));




---------------------




