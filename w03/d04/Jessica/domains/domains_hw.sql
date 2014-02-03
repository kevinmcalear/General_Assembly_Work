CREATE TABLE locations (id serial PRIMARY key, location varchar(50) NOT NULL);
CREATE TABLE entries (id serial PRIMARY key, location_id integer references locations(id), date_traveled date DEFAULT current_date, entry varchar(50) NOT NULL);

CREATE TABLE users (id serial PRIMARY key, username varchar(50) NOT NULL, password varchar(50) NOT NULL);
CREATE TABLE albums (id serial PRIMARY key, user_id integer references users(id), date_of_event date DEFAULT current_date, event_name varchar(50) NOT NULL);
CREATE TABLE photographs (id serial PRIMARY key, album_id integer references albums(id), date_of_photo date DEFAULT current_date);

CREATE TABLE judges (id serial PRIMARY key, judge_name varchar(50) NOT NULL);
CREATE TABLE scores (id serial PRIMARY key, judge_id integer references judges(id), skater_id integer references skaters(id), score integer NOT NULL);
CREATE TABLE skaters (id serial PRIMARY key, skater_name varchar(50) NOT NULL);


CREATE TABLE friendships (id serial PRIMARY key, user_id integer references users(id));
CREATE TABLE users (id serial PRIMARY key, username varchar(50) NOT NULL, password varchar(50) NOT NULL, email varchar(50) NOT NULL);
CREATE TABLE messages (id serial PRIMARY key, user_id integer references users(id), snapchat_id integer NOT NULL, snapchat_content varchar(50) NOT NULL, snapchat_date DEFAULT current_date);
CREATE TABLE users_messages (id serial PRIMARY key, user_id integer references users(id), message_id integer references messages(id));