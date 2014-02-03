### Photo Management

DROP TABLE IF EXISTS web_app;

CREATE TABLE web_app (
  id serial PRIMARY KEY,
  owner varchar(50) NOT NULL,
  type_of_photo varchar(50) NOT NULL,
  quantity integer DEFAULT 1,
  price money NOT NULL,
  date_taken date DEFAULT current_date,
  location varchar(50)
);

DROP TABLE IF EXISTS photo;

CREATE TABLE photo (
  id serial PRIMARY KEY,
  owner varchar(50) NOT NULL,
  type varchar(50) NOT NULL,
  number_of_ppl integer DEFAULT 1,
  price money NOT NULL,
  date_taken date DEFAULT current_date,
  location varchar(50)
);

ALTER TABLE photo 
ADD CONSTRAINT photo_id 
FOREIGN KEY (photo_id) 
REFERENCES web_app(id);