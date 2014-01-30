In class exercise

1. Shows everything for which three or more were purchased
SELECT * FROM receipts WHERE (quantity>=3);

2. Show everything bought after the 22
SELECT * FROM receipts WHERE (date_bought>'1989-12-22’);

3. 
SELECT store FROM receipts;

4. 
SELECT store FROM receipts WHERE (price<'15.00’);

5. 
SELECT price, quantity FROM receipts WHERE (store!='Borders' AND store!='Local Book Store');


Part II

1. How much money was spent on Dec 21?
SELECT SUM(quantity * price) FROM receipts WHERE date_bought='1989-12-21';

2. How many purchases (i.e. receipts) from Sears?
SELECT store, count(*) FROM receipts WHERE store='Sears' GROUP BY store;

3. How many items from Express?
 SELECT item, SUM(quantity) FROM receipts WHERE store='Express' GROUP BY item;

4. Average # of items per purchase Dec 21 - 23
SELECT AVG(quantity) FROM receipts WHERE date_bought>='1989-12-21' OR date_bought<='1989-12-23';

5. Amount spent per dat, least $ to most
SELECT date_bought, sum(price*quantity) FROM receipts GROUP BY date_bought ORDER BY sum;