##### Travel Log ######
CREATE TABLE locations(id serial PRIMARY KEY, city varchar(50) NOT NULL, country varchar(50) NOT NULL);

CREATE TABLE entries(id serial PRIMARY KEY, description varchar(50) NOT NULL, date  DEFAULT);

ALTER TABLE entries ADD COLUMN location_id integer references locations(id);


##### Photo Mgmt App ######
CREATE TABLE clients(id serial PRIMARY KEY, name varchar(50) NOT NULL, age, integer NOT NULL);

CREATE TABLE albums(id serial PRIMARY KEY, album_title varchar(50) NOT NULL);

CREATE TABLE photos(id serial PRIMARY KEY, description varchar(50) NOT NULL, date_taken date DEFAULT current_date);

ALTER TABLE albums ADD COLUMN client_id integer references clients(id);

ALTER TABLE photos ADD COLUMN album_id integer references albums(id);


##### Figure Skating ######
CREATE TABLE skaters(id serial PRIMARY KEY, name varchar(50) NOT NULL, age integer NOT NULL);

CREATE TABLE scores(id serial PRIMARY KEY, score_judge_1 varchar(50) NOT NULL, score_judge_2 varchar(50) NOT NULL, score_judge_3 varchar(50) NOT NULL);

CREATE TABLE judges(id serial PRIMARY KEY, name varchar(50) NOT NULL);

ALTER TABLE scores ADD COLUMN skater_id integer references skater(id);

ALTER TABLE scores ADD COLUMN judge_id integer references judge(id);


##### Snapchat ######
CREATE TABLE friends(id serial PRIMARY KEY, name varchar(50) NOT NULL, age varchar(50) NOT NULL, location varchar(50) NOT NULL);

CREATE TABLE snapshots(id serial PRIMARY KEY, title varchar(50) NOT NULL, description varchar(50) NOT NULL);






