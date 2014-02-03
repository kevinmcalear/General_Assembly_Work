DROP TABLE IF EXISTS places;

########################################
###### TRAVEL LOG #######################
########################################

CREATE TABLE places (
  id serial PRIMARY KEY,
  city varchar(50) NOT NULL,
  country varchar(50) NOT NULL,
  entries integer DEFAULT 1
);

CREATE TABLE entries (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  main_text varchar(50) NOT NULL,
  date_written date DEFAULT current_date,
  places_id integer references places(id)
);

########################################
###### PHOTOGRAPHER ####################
########################################

CREATE TABLE clients (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL,
  address varchar(50) NOT NULL
);

CREATE TABLE albums (
  id serial PRIMARY KEY,
  title varchar(50) NOT NULL,
  date_taken varchar(50) NOT NULL,
  location varchar(50) NOT NULL,
  num_photos integer DEFAULT 1
);

CREATE TABLE photos (
  id serial PRIMARY KEY,
  picture_data varchar(50) NOT NULL,
  description varchar(50) NOT NULL,
  album_id integer references album(id)
);

CREATE TABLE client_album (
  id serial PRIMARY KEY,
  client_id integer references clients(id),
  album_id integer references albums(id)
);


########################################
###### FIGURE SKATING ####################
########################################

CREATE TABLE judges (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE figure_skaters (
  id serial PRIMARY KEY,
  name varchar(50) NOT NULL
);

CREATE TABLE scores (
  id serial PRIMARY KEY,
  value integer DEFAULT 5,
  judge_id integer references judges(id),
  figure_skater_id integer references figure_skaters(id)
);

########################################
###### SNAPCHAT ########################
########################################

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(50) NOT NULL,
  profile_blurb varchar(50) NOT NULL
);

CREATE TABLE snapshots (
  id serial PRIMARY KEY,
  picture_data varchar(50) NOT NULL,
  duration integer DEFAULT 9,
  blurb varchar(25) NOT NULL,
  screenshot_taken boolean false,
  sender_id integer references users(id)
);

CREATE TABLE receivers_and_pictures (
  id serial PRIMARY KEY,
  snapshot_id integer references snapshots(id),
  receiver_id integer references users(id)
);
