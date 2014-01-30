>(1) assign the parents to the receipts: "Mom" went to JC Penny's, Borders, and Express; "Dad" went to Toys R Us and Sears 

> UPDATE receipts SET parent='Mom' WHERE store='JC Penny''s' OR store='Borders' OR store='Express';
>UPDATE receipts SET parent='Dad' WHERE store='Sears' OR store='Toys R Us';

>(2) figure out the number of presents per parent, the average cost per present by parent, and show the presents in descending order of price for each parent (ie via the menu items "Parent (S)tats", then choose "Mom" or "Dad") 

> SELECT SUM(quantity), parent FROM receipts GROUP BY parent;
> SELECT AVG(price_per_item::numeric)::money, parent FROM receipts GROUP BY parent;
> SELECT parent, item, price_per_item FROM receipts ORDER BY parent, price_per_item DESC;

>(3) add Dave to every receipt that is currently unassigned

>

>(4) remove the entry for local book store (returned) 

> DELETE FROM receipts WHERE id=8;