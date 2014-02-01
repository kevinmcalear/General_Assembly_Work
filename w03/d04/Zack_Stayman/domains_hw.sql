-- Travel Log
CREATE DATABASE travel_journal_db;
CREATE TABLE places(id serial PRIMARY KEY, city varchar(50) NOT NULL, country varchar(50) NOT NULL);
CREATE TABLE journals(id serial PRIMARY KEY, date date NOT NULL, place_id integer references places(id) NOT NULL, content varchar(50000), title varchar(500) NOT NULL);

-- Photo Management app
CREATE DATABASE photographer_db;
CREATE TABLE clients(id serial PRIMARY KEY, first_name varchar(50) NOT NULL, last_name varchar(50) NOT NULL);
CREATE TABLE albums(id serial PRIMARY KEY, date date NOT NULL, title varchar(50), client_id references clients(id) NOT NULL);
CREATE TABLE photos(id serial PRIMARY KEY, date date NOT NULL, time timestamp NOT NULL, description varchar(100), album_id integer references albums(id) NOT NULL);
-- Figure Skating
CREATE DATABASE figure_skating_db;
CREATE TABLE judges(id serial PRIMARY KEY, name varchar(50) NOT NULL, country varchar(50) NOT NULL);
CREATE TABLE skaters(id serial PRIMARY KEY, name varchar(50) NOT NULL, country varchar(50) NOT NULL);
CREATE TABLE judges_skaters(id serial PRIMARY KEY, judge_id integer references judges(id) NOT NULL, skater_id integer references skaters(id) NOT NULL, score integer NOT NULL);
-- Snapchat
CREATE DATABASE snapchat_db;
CREATE TABLE users(id serial PRIMARY KEY, name varchar(50) NOT NULL, email varchar(50) NOT NULL, username varchar(50) NOT NULL);
CREATE TABLE photos(id serial PRIMARY KEY, name varchar(50) NOT NULL, date timestamp NOT NULL, user_id integer references users(id) NOT NULL);
CREATE TABLE photos_users(id serial PRIMARY KEY, user_id integer references users(id) NOT NULL, photo_id integer references photos(id) NOT NULL);