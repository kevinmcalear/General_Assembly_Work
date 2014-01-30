DROP TABLE IF EXISTS receipts;

CREATE TABLE receipts (
  id serial PRIMARY KEY,
  store varchar(50) NOT NULL,
  item varchar(50) NOT NULL,
  quantity integer DEFAULT 1,
  price money NOT NULL,
  date_bought date DEFAULT current_date,
  parent varchar(50)
);

INSERT INTO receipts (store, item, quantity, price, date_bought, parent) VALUES
  ('Sears', 'VCR', 1, 180, 'December 21 1989', 'Dad'),
  ('Toys R Us', 'Nintendo', 1, 150, 'December 21 1989', 'Dad'),
  ('Toys R Us', 'Simon Says', 1, 25, 'December 21 1989', 'Dad'),
  ('Toys R Us', 'Pound Puppy', 4, 12, 'December 21 1989', 'Dad'),
  ('Sears', 'Legos Set', 1, 40, 'December 21 1989', 'Dad'),
  ('Borders', 'Boxcar Children', 3, 12, 'December 21 1989', 'Mom'),
  ('Borders', 'Babysitter''s Club', 2, 12, 'December 21 1989', 'Mom'),
  ('Local Book Store', 'Bunnicula', 1, 14, 'December 21 1989', 'Dave'),
  ('Macy''s', 'pink Izod top', 3, 28.50, 'December 22 1989', 'Mom'),
  ('Express', 'scrunchies', 10, 6, 'December 22 1989', 'Mom'),
  ('Express', 'overalls', 1, 40, 'December 22 1989', 'Mom'),
  ('JC Penny''s', 'Keds', 1, 50, 'December 23 1989', 'Mom'),
  ('JC Penny''s', 'tube socks', 3, 28, 'December 23 1989', 'Mom'),
  ('JC Penny''s', 'Reeboks', 1, 60, 'December 23 1989', 'Mom'),
  ('JC Penny''s', 'tights, Red', 1, 10.50, 'December 23 1989', 'Mom'),
  ('JC Penny''s', 'Quicksilver t-shirt', 1, 20.75, 'December 23 1989', 'Mom'),
  ('JC Penny''s', 'Ninja Turtles bedspread', 1, 20, 'December 23 1989', 'Mom'),
  ('Sears', 'swatch watch', 1, 50, 'December 24 1989', 'Dad'),
  ('Toys R Us', 'Trouble', 1, 25, 'December 24 1989', 'Dad'),
  ('Sears', 'school supplies set', 5, 18.50, 'December 24 1989', 'Dad');