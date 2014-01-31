###Travel Log
CREATE DATABASE travel_log_db;
CREATE TABLE place (id serial PRIMARY KEY, person_name varchar(50) NOT NULL);
CREATE TABLE person (id serial PRIMARY KEY, place_name varchar(50) NOT NULL);
CREATE TABLE entries (id serial PRIMARY KEY, entry_name varchar(50) NOT NULL, person_id integer references person(id), place_id integer references place(id));

###Photo Management App
CREATE DATABASE photo_management_db;
CREATE TABLE client (id serial PRIMARY KEY, client_name varchar(50) NOT NULL);
CREATE TABLE event (id serial PRIMARY KEY, event_name varchar(50) NOT NULL, client_id integer references client(id));
CREATE TABLE photo (id serial PRIMARY KEY, photo_name varchar(50) NOT NULL, event_id integer references event(id));

###Figure Skating
CREATE DATABASE figure_skating_db;
CREATE TABLE skater (id serial PRIMARY KEY, skater_name varchar(50) NOT NULL);
CREATE TABLE performance (id serial PRIMARY KEY, performance_name varchar(50) NOT NULL, skater_id integer references skater(id));
CREATE TABLE country (id serial PRIMARY KEY, country_name varchar(50) NOT NULL);
CREATE TABLE judges (id serial PRIMARY KEY, judge_name varchar(50) NOT NULL, country_id integer references country(id));
CREATE TABLE scores (id serial PRIMARY KEY, score integer NOT NULL, performance_id integer references performance(id), judge_id integer references judge(id));

###Snapchat
CREATE DATABASE snapchat_db;
CREATE TABLE user (id serial PRIMARY KEY, user_name varchar(50) NOT NULL);
CREATE TABLE photo (id serial PRIMARY KEY, user_id integer references user(id));
CREATE TABLE follower (id serial PRIMARY KEY, user_id integer references user(id), connection_id integer references user(id));
CREATE TABLE photo_share (id serial PRIMARY KEY, photo_id integer references photo(id), follower_id integer references follower(id) );

###College Class Management Software (Think Blackboard)
CREATE DATABASE blackboard_db;
CREATE TABLE class (id serial PRIMARY KEY, class_name varchar(50) NOT NULL);
CREATE TABLE student (id serial PRIMARY KEY, student_name varchar(50) NOT NULL);
CREATE TABLE teacher (id serial PRIMARY KEY, teacher_name varchar(50) NOT NULL);
CREATE TABLE class_student (id serial PRIMARY KEY, class_id integer references class(id), student_id integer references student(id));
CREATE TABLE class_teacher (id serial PRIMARY KEY, class_id integer references class(id), teacher_id integer references teacher(id));
