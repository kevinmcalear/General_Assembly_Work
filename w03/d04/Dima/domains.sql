-- travel log
CREATE DATABASE travel_log_db;
DROP TABLE IF EXISTS travel_log;
CREATE TABLE travel_log (
  id serial PRIMARY KEY,
  trip_date date DEFAULT current_date,
  city varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  comments varchar(50) NOT NULL);

CREATE DATABASE photo_mnger_db;
DROP TABLE IF EXISTS photo_mnger;
CREATE TABLE photo_mnger (
  id serial PRIMARY KEY,
  event_date date DEFAULT current_date,
  event_name varchar(50) NOT NULL,
  event_type varchar(50) NOT NULL,
  client_name varchar(50) NOT NULL,);

CREATE DATABASE figure_skating_db;
DROP TABLE IF EXISTS figure_skating;
CREATE TABLE figure_skating (
  id serial PRIMARY KEY,
  skater_name varchar(50) NOT NULL,
  judge1_score integer NOT NULL,
  judge2_score integer NOT NULL,
  judge3_score integer NOT NULL,
  judge4_score integer NOT NULL);

CREATE DATABASE snapchat_db;
DROP TABLE IF EXISTS chat_friends;
CREATE TABLE chat_friends (
  id serial PRIMARY KEY,
  friend_name varchar (50) NOT NULL);

DROP TABLE IF EXISTS photo_base
CREATE TABLE photo_base (
  id serial PRIMARY KEY,
  photo_name varchar(50) NOT NULL,
  date_taken date DEFAULT current_date);

DROP TABLE IF EXISTS photo_friend_router
CREATE TABLE photo_friend_router (
id serial PRIMARY KEY,
chat_friends_id integer,
photo_base_id integer);
