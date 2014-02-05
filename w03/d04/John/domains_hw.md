# Domain Modeling 2

For each of the following, read the domain, then model it into a problem with entities and relationships. Draw an ERD diagram. From your ERD diagram, design a database schema. For each one, create the SQL file you would use to create the tables.

###Travel Log
You are building an app to help you keep track of our travels. Allows you to write journal entries in various places along your way. Example of a place is Chicago, USA or Paris, France or Timbuktu, Mali. Each place has it's own section in your journal and you can go back and review all of your entries for a particular place after your trip.

###Photo Management App
A professional photographer needs a web app to help manage sharing the photographs that she takes with her clients. She often takes wedding photos, but also does couples and family photos. She keeps photos in an album for each event and shares those with her clients.

###Figure Skating
You are building an app to help with the Winter Olympics, specifically the figure skating event. Your app will keep track of the skaters and the scores they receive from each of the judges. 

###Snapchat
Instagram is SO last year. We're going to build a web app that allows us to add friends, and then to take Snapshots and send them to any number of our friends.

## Bonus

###College Class Management Software (Think Blackboard)
You are building software to help students and professors manage their classes. A student can be enrolled in several classes, and they have assignments and grades for each of those classes. A teacher also can teach multiple classes and teaches many students. Courses, students and teachers are limited to a university (no cross-university enrollment).


CREATE TABLE photos (id serial PRIMARY KEY, name varchar(50) NOT NULL, photo varchar(50) NOT NULL, description varchar(50) NOT NULL, owner varchar(50) NOT NULL);


CREATE TABLE scores (id serial PRIMARY KEY, routine varchar(50) NOT NULL, date date NOT NULL, value integer NOT NULL, skater_id integer references skaters(id), judge_id integer references judges(id));