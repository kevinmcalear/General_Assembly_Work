require 'pg'
require 'pry'


puts "WELCOME TO RECEIPT.LY"
puts ""

print "Enter a store: "
store = gets.chomp
print "Enter an item: "
item = gets.chomp
print "Enter a price per item: "
price = gets.chomp.to_i
print "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts (store, item, price_per_item, parent) VALUES ('#{store}', '#{item}', '#{price}', '#{parent}');"
select_query = "SELECT * FROM receipts;"

db_conn = PG.connect( {:dbname => "receipts_db"} )

db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.values

db_conn.close