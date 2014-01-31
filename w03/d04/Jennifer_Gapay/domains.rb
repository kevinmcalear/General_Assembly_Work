## Travel

CREATE TABLE locations (id serial PRIMARY KEY, country varchar(50) NOT NULL, city varchar(50) NOT NULL); 

CREATE TABLE entries (id serial PRIMARY KEY, entry varchar(500) NOT NULL, date_entry date DEFAULT current_date, location_id integer references location(id)); 

### Photo Mgmt App

CREATE TABLE photos (id serial PRIMARY KEY, photo varchar(50) NOT NULL, genre varchar(50) NOT NULL, date_taken date DEFAULT current_date); 

CREATE TABLE clients (id serial PRIMARY KEY, name varchar(50) NOT NULL, address varchar(50) NOT NULL, phone_number integer, photos_id integer references photos(id)); 



#Figure Skating

I would populate this database with scores.

CREATE TABLE scores (id serial PRIMARY KEY, skier_name varchar(50) NOT NULL, judge1 varchar(50) NOT NULL, judge2 varchar(50) NOT NULL, judge3 varchar(50) NOT NULL, judge4 varchar(50) NOT NULL); 


#Snapchat

CREATE TABLE s_users (id serial PRIMARY KEY, name varchar(50) NOT NULL, email varchar(50) NOT NULL); 
CREATE TABLE s_photos (id serial PRIMARY KEY, photo varchar(50) NOT NULL, genre varchar(50) NOT NULL, date_taken date DEFAULT current_date); 

CREATE TABLE share (id serial PRIMARY KEY, s_photos_id integer references photos(id), s_users_id integer references users(id));
