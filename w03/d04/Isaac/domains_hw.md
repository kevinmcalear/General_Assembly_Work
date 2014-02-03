# Domain Modeling 2

For each of the following, read the domain, then model it into a problem with entities and relationships. Draw an ERD diagram. From your ERD diagram, design a database schema. For each one, create the SQL file you would use to create the tables.

###Travel Log
You are building an app to help you keep track of our travels. Allows you to write journal entries in various places along your way. Example of a place is Chicago, USA or Paris, France or Timbuktu, Mali. Each place has it's own section in your journal and you can go back and review all of your entries for a particular place after your trip.

Places table
ID     name

Entries table
ID     content     places.id FK

CREATE DATABASE travellog_db ; 

\c travellog_db ; 

CREATE TABLE places (id serial PRIMARY KEY, name varchar(50) NOT NULL) ; 

CREATE TABLE entries (id serial PRIMARY KEY, content varchar(400), place_id integer references places(id) ;

###Photo Management App
A professional photographer needs a web app to help manage sharing the photographs that she takes with her clients. She often takes wedding photos, but also does couples and family photos. She keeps photos in an album for each event and shares those with her clients.

Photos table
ID     photo_content      type      event_album_ID FK

Events table
ID    Event name 


CREATE DATABASE photos_db ; 

\c photos_db ; 

CREATE TABLE events (id serial PRIMARY KEY, name varchar(50) NOT NULL) ; 

CREATE TABLE photos (id serial PRIMARY KEY, content binary, type varchar(50), event_id integer references events(id) ;


###Figure Skating
You are building an app to help with the Winter Olympics, specifically the figure skating event. Your app will keep track of the skaters and the scores they receive from each of the judges. 

Skater table
ID   Name      

Judge table
ID   Name

Figure Skating Scores table
ID    Score     Judge_id    Skater_id


CREATE DATABASE skating_db ; 

\c skating_db 

CREATE TABLE skaters (id serial PRIMARY KEY, name varchar(50) NOT NULL) ; 

CREATE TABLE judges (id serial PRIMARY KEY, name varchar(50) NOT NULL) ; 

CREATE TABLE scores (id serial PRIMARY KEY, score integer, judge_id integer references judges(id) , skater_id integer references skater(id) ;


###Snapchat
Instagram is SO last year. We're going to build a web app that allows us to add friends, and then to take Snapshots and send them to any number of our friends.

People table
id    name

Snapchat message table
ID    message_contents    sender_id    recipient_id    


CREATE DATABASE snapchat_db ; 

\c snapchat_db ; 

CREATE TABLE people (id serial PRIMARY KEY, name varchar(50) NOT NULL) ; 

CREATE TABLE messages (id serial PRIMARY KEY, content binary,  sender_id integer references people(id), recipient_id integer references people(id) ;


## Bonus

###College Class Management Software (Think Blackboard)
You are building software to help students and professors manage their classes. A student can be enrolled in several classes, and they have assignments and grades for each of those classes. A teacher also can teach multiple classes and teaches many students. Courses, students and teachers are limited to a university (no cross-university enrollment).