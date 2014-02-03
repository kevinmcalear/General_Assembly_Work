###Travel Log
#You are building an app to help you keep track of our travels. Allows you to write journal entries in various places along your way. Example of a place is Chicago, USA or Paris, France or Timbuktu, Mali. Each place has it's own section in your journal and you can go back and review all of your entries for a particular place after your trip.

CREATE DATABASE travellog_db

CREATE TABLE location (id serial PRIMARY KEY, city varchar(50) NOT NULL, country varchar(50) NOT NULL);

CREATE TABLE entries (id serial PRIMARY KEY, date_written date DEFAULT current_date, location_id integer references location(id));

###Photo Management App
#A professional photographer needs a web app to help manage sharing the photographs that she takes with her clients. She often takes wedding photos, but also does couples and family photos. She keeps photos in an album for each event and shares those with her clients.

CREATE DATABASE photomanager_db

CREATE TABLE clients (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE albums (id serial PRIMARY KEY, event_name varchar(50) NOT NULL, photo_type varchar(50) NOT NULL, clients_id integer references clients(id));


###Figure Skating
#You are building an app to help with the Winter Olympics, specifically the figure skating event. Your app will keep track of the skaters and the scores they receive from each of the judges. 

CREATE DATABASE figureskating_db

CREATE TABLE skaters (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE judges (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE scores (id serial PRIMARY KEY, score integer DEFAULT 0, judges_id integer references judges(id), skaters_id integer references skaters(id));


###Snapchat
#Instagram is SO last year. We're going to build a web app that allows us to add friends, and then to take Snapshots and send them to any number of our friends.

CREATE DATABASE snapchat_db

CREATE TABLE users (id serial PRIMARY KEY, name varchar(50) NOT NULL);

CREATE TABLE snapshots(id serial PRIMARY KEY, picture_name varchar(50) NOT NULL, users_id integer references users(id));

CREATE TABLE recipients(id serial PRIMARY KEY, recipient_name varchar(50) NOT NULL, snapshots_id integer references snapshots(id));



