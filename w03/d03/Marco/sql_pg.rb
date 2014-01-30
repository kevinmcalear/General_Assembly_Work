require 'pg'
require 'pry'

puts "Welcome to RECEIPT.LY
"
print "Enter a store: "
store = gets.chomp
print "Enter an item: "
item = gets.chomp
print "Eter a price per item: $"
price = gets.chomp
print "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts "
insert_query += "(store, item, price_per_item, parent) "
insert_query += "VALUES ('#{store}','#{item}','#{price}','#{parent}');"


select_query = "SELECT * FROM receipts;"


db_conn = PG.connect( {:dbname => "receipts_db"})

db_conn.exec(insert_query)

# binding.pry

#type 'ls db_conn' for a list of commands you can run on it

db_conn.close