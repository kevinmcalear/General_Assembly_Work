1. Explain ACID in layman’s terms
  2. Explain what the client-server model is
  3. Name the four basic actions underlying the client-server relationship (CRUD “We {Create, Read, Update, Delete} data on the server”)
      * Create -> INSERT
      * Read -> SELECT
      * Update -> UPDATE
      * Delete -> DELETE
  4. List the CRUD commands in SQL.
  5. Use ALTER to add, remove or change (attributes i.e. columns) in a table
      * change Schema, not Data
  6. Use UPDATE to change data (from server)
  7. Use DELETE to remove data (from server)

We as clients:
CREATE --> INSERT(used to create data on the server)
READ  --> SELECT
UPDATE 
DELETE

ALTER (is used on schema not data)
--
data on the server


ALTER TABLE receipts ADD COLUMN parent varchar(50) NOT NULL;
this gives an error

Change the schema:
ALTER TABLE receipts DROP COLUMN parent;

Add a column:
ALTER TABLE receipts ADD COLUMN parent varchar(50);

Update data in the new column:
UPDATE receipts SET parent='Dad';
UPDATE receipts SET parent='Mom' WHERE store='Borders';

delete removes a piece of data, a row
DELETE FROM receipts WHERE item='overalls';

to take out a cell within a row, you dont delete you update
UPDATE receipts SET parent='' WHERE parent='Dad

Use update to change data, use delete to remove data

UPDATE receipts SET parent='';

>(1) assign the parents to the receipts: "Mom" went to JC Penny's, Borders, and Express; "Dad" went to Toys R Us and Sears  
UPDATE receipts SET parent='Mom' WHERE store = 'JC Penny''s' OR store = 'Borders' OR store = 'Express';
>  
>(2) figure out the number of presents per parent, the average cost per present by parent, and show the presents in descending order of price for each parent (ie via the menu items "Parent (S)tats", then choose "Mom" or "Dad")  
SELECT AVG(price * number_of_item) FROM receipts 

rename the column:
ALTER TABLE receipts RENAME COLUMN number_of_item TO quantity;
ALTER TABLE receipts RENAME COLUMN buy_date TO date_bought;

SELECT quantity, parent FROM receipts;
SELECT SUM(quantity), parent FROM receipts GROUP BY parent;
>  
>(3) add Dave to every receipt that is currently unassigned
>
SELECT parent, (price*quantity) AS total_amount_spent FROM receipts;


SELECT parent, sum(price) AS sum_price, sum(quantity) AS sum_quantity FROM receipts GROUP BY parent;

SELECT parent, (sum(price*quantity) / sum(quantity)) as avg_per_present FROM receipts GROUP BY parent;  

>(4) remove the entry for local book store (returned

SELECT avg(price_per_item::numeric), parent FROM receipts GROUP BY parent 

SELECT parent, item, price_per_item FROM receipts  ORDER BY parent, price_per_item;

UPDATE receipts SET parent='Dave' WHERE parent='';

DELETE FROM receipts WHERE id=''

git add --force seeds.sql















