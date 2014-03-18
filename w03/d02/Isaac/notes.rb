# schema
# entities (tables)
# attributes (columns)
# relationships (between tables)

# data (rows)

# PSQL
# psql -d itorresverdugo  
# \l   list
# \h  help
# \q  quit
# \c dbname   goto different database'
# \d  will tell us the schema of the database
# psql -d receipts_db -h localhost
# \d nameoftable

# SQL commands
# CREATE object
# DROP DATABASE dbname;
# every sql command ends with a 
# CREATE TABLE receipts ();
# attributes are column, type, modifiers
# DROP TABLE receipts;
# CREATE TABLE receipts (id serial PRIMARY KEY, store varchar(50) NOT NULL, item varchar(50) NOT NULL, quantity integer DEFAULT 1, price money NOT NULL, date_bought date NOT NULL DEFAULT current_date);
# store is a varchar string with maximum 50 characters, we need it so NOT NULL

# every table needs a primary key for us to ensure ACID . that primary key is going to be an auto incrementing integer. every time you add something to the database it looks at the serial number, ensures that there are never two instances that have the same id number.

# insert data using insert 
# INSERT INTO receipts 
# (store, item, price) VALUES 
# ('Macys', 'braided best', 20);

# retrieve data from our table using select
# SELECT (id, store, item, quantity, price, date_bought) FROM receipts;

# SELECT * FROM receipts; 
# this means select all

# SELECT  (store, item) FROM receipts; 

# select using where
# SELECT * FROM receipts WHERE store='Macys';



# DROP TABLE IF EXISTS receipts;

# CREATE TABLE receipts (
#   id serial PRIMARY KEY,
#   store varchar(50) NOT NULL,
#   item varchar(50) NOT NULL,
#   quantity integer DEFAULT 1,
#   price money NOT NULL,
#   date_bought date DEFAULT current_date
# );


INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('Superman','Clark Kent','true','strength','Lex Luthor'),
('Wonder Woman','Diana Prince','false','strength','Cheetah'),
('Batman','Bruce Wayne','true','intelligence','Joker'),
('Mr Incredible','Robert Parr','false','strength','Syndrome'),
('Professor X','Charles Xavier','false','psychic','Magneto'),
('Spiderman','Peter Parker','false','wall climbing','Doctor Octopus'),
('Captain America','Steve Rogers','false','super soldier','Red Skull'),
('Iron Man','Tony Stark','false','iron suit','Mandarin'),
('Wolverine','Logan','false','healing','Sabretooth');



# INSERT INTO receipts (store, item, quantity, price, date_bought) VALUES
#   ('Sears', 'VCR', 1, 180, 'December 21 1989'),
#   ('Toys R Us', 'Nintendo', 1, 150, 'December 21 1989'),
#   ('Toys R Us', 'Simon Says', 1, 25, 'December 21 1989'),
#   ('Toys R Us', 'Pound Puppy', 4, 12, 'December 21 1989'),
#   ('Sears', 'Legos Set', 1, 40, 'December 21 1989'),
#   ('Borders', 'Boxcar Children', 3, 12, 'December 21 1989'),
#   ('Borders', 'Babysitter''s Club', 2, 12, 'December 21 1989'),
#   ('Local Book Store', 'Bunnicula', 1, 14, 'December 21 1989'),
#   ('Macy''s', 'pink Izod top', 3, 28.50, 'December 22 1989'),
#   ('Express', 'scrunchies', 10, 6, 'December 22 1989'),
#   ('Express', 'overalls', 1, 40, 'December 22 1989'),
#   ('JC Penny''s', 'Keds', 1, 50, 'December 23 1989'),
#   ('JC Penny''s', 'tube socks', 3, 28, 'December 23 1989'),
#   ('JC Penny''s', 'Reeboks', 1, 60, 'December 23 1989'),
#   ('JC Penny''s', 'tights, Red', 1, 10.50, 'December 23 1989'),
#   ('JC Penny''s', 'Quicksilver t-shirt', 1, 20.75, 'December 23 1989'),
#   ('JC Penny''s', 'Ninja Turtles bedspread', 1, 20, 'December 23 1989'),
#   ('Sears', 'swatch watch', 1, 50, 'December 24 1989'),
#   ('Toys R Us', 'Trouble', 1, 25, 'December 24 1989'),
#   ('Sears', 'school supplies set', 5, 18.50, 'December 24 1989');


# list items which have a quantity greater than or equal to 3
# SELECT * FROM receipts WHERE quantity >= 3;

# list all attributes for rows where date is after the 22nd
# SELECT * FROM receipts WHERE date_bought > '1989-12-22';

# list all stores 
# SELECT store FROM receipts;

# list all stores where under 15 dollars pet item was spent
# SELECT * FROM receipts WHERE price < '$15.00';

# list prices and quantities for items not from a bookstore 
# SELECT price, quantity from receipts WHERE (store != 'Borders') AND (store != 'Local Book Store');

# ORDER BY
# SELECT * FROM receipts WHERE quantity >= 3 ORDER BY quantity;
# THE OTHER WAY
# SELECT * FROM receipts WHERE quantity >= 3 ORDER BY quantity DESC;

# combining horizontally (not used that often) collapses columns
# SELECT item, (quantity * price) FROM receipts WHERE (quantity * price) > '$50.00';
# SELECT item, (quantity * price) AS total FROM receipts WHERE (quantity * price) > '$50.00';

# SELECT store, SUM(quantity*price) FROM receipts GROUP BY store;
# SELECT store, COUNT(quantity*price) FROM receipts GROUP BY store;
# SELECT store, AVG(quantity*price::numeric) FROM receipts GROUP BY store;

# SELECT sum(quantity*price) FROM receipts;

# SELECT store, SUM(quantity) FROM receipts GROUP BY store ORDER BY sum;

# - how much money was spent on December 21?
# SELECT SUM(quantity*price) FROM receipts WHERE date_bought = '1989-12-21';
# # - how many purchases (ie receipts) from Sears?
# SELECT store, COUNT(id) FROM receipts WHERE store = 'Sears' GROUP BY store;
# # - how many items from Express?
# SELECT item, SUM(quantity) FROM receipts WHERE store = 'Express' GROUP BY item;
# # - average # of items per purchase December 21-23
# SELECT AVG(quantity) FROM receipts WHERE date_bought >= '1989-12-21' AND date_bought <= '1989-12-23';
# # - amount spent per day, least $ to most
# SELECT date_bought, sum(price*quantity) FROM receipts GROUP BY date_bought ORDER BY sum;


# CREATE TABLE names (id serial PRIMARY KEY, name varchar(50) NOT NULL);















