#travel_journal.sql
CREATE TABLE cities (
  id serial PRIMARY KEY,
  city varchar(80) NOT NULL
);


CREATE TABLE journal_entries(
id serial PRIMARY KEY,
entry_location references cities(city),
entry_text varchar(2500) NOT NULL
entry_time timestamp 
);





