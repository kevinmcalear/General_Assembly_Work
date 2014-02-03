
Describe the parts of a schema (i.e. an ERD)
Explain what a foreign key is and why we use one
Explain and list constraints in a db.
Explain what a join is and when you would use one
List the types of relationships in a database

We use activerecord to interact with out databases. it translates pure ruby into sql automatically for us. 

psql -d receipts_db -f seeds.sql

CREATE TABLE households (id serial PRIMARY KEY , name varchar(50) NOT NULL , parent varchar(50) NOT NULL );

INSERT INTO households (name, parent) VALUES ('Dad''s House', 'Dad');

INSERT INTO households (name, parent) VALUES ('Mom''s House', 'Dave');

CREATE TABLE parents (id serial PRIMARY KEY, name varchar(50) NOT NULL);

INSERT INTO PARENTS (name) VALUES ('Mom');
INSERT INTO PARENTS (name) VALUES ('Dad');
INSERT INTO PARENTS (name) VALUES ('Dave');
INSERT INTO PARENTS (name) VALUES ('Chris');

lets define a relationship between receipts table and parents table

foreign keys are the essence of relationships in a relational database
they reference a primary key in a foreign table. 
any column that holds a foreign key will be named thus:

ALTER TABLE receipts RENAME COLUMN parent TO parent_id;

SELECT id, parent_id FROM receipts;

SELECT receipts.id, receipts.parent_id, parents.id, parents.name FROM receipts, parents;

DOT PRODUCT is at the heart of when we are joining tables. 

SELECT COUNT(*) FROM receipts;

SELECT receipts.id, receipts.parent_id, parents.id, parents.name FROM receipts, parents WHERE receipts.parent_id = parents.name;

SELECT receipts.id, receipts.parent_id, parents.id, parents.name FROM receipts, parents WHERE receipts.parent_id = parents.name;

SELECT receipts.id AS r_id, receipts.parent_id AS receipts_parent,parents.id AS p_id FROM receipts, parents WHERE receipts.parent_id = parents.name;

HERE IS THE JOINING MAGIC:

UPDATE receipts SET parent_id=parents.id FROM parents WHERE receipts.parent_id=parents.name;

SELECT store, item, parent_id, parents.name FROM receipts;

ALTER TABLE receipts ALTER COLUMN parent_id SET DATA TYPE integer USING parent_id::numeric;

SELECT store, item, parent_id,parents.name FROM receipts, parents WHERE receipts.parent_id=1;

SELECT store, item, name FROM receipts, parents WHERE receipts.parent_id=parents.id;

ALTER TABLE receipts ADD 

ALTER TABLE receipts ADD CONSTRAINT parent_id FOREIGN KEY (parent_id) references parents(id);

one-to-many relationships. most relationships between entities are one_to_many relationships. 1:many

in a 1:many situation the foreign key goes in the many


ALTER TABLE households DROP COLUMN parent;

ALTER TABLE parents ADD COLUMN household_id integer references households(id);

UPDATE parents SET household_id=1 WHERE name='Dad' OR name='Chris' ;
UPDATE parents SET household_id=2 WHERE name='Mom' OR name='Dave';

SELECT parents.name, households.name FROM parents, households WHERE parents.household_id = households.id;

name                     type          constraint
foreign_table_id     integer     references foreign_table(id)

you will almost never have a one_to_one relationship

whenever we see a many:many relationship it means we need to normalize our tables into one:many

JOIN TABLE

ERD entity relationship diagram 

CREATE TABLE children (ID serial PRIMARY KEY, name varchar(50) NOT NULL, age integer NOT NULL) ; 

CREATE TABLE children_presents (id serial PRIMARY KEY, child_id integer references children(id), present_id integer references presents(id));

SELECT * FROM parents FULL OUTER JOIN presents ON presents.parent_id = parents.id;












