require 'pg'
require 'pry'

puts "Welcome to Receiptly"
puts ""
print "Enter a store: "
store = gets.chomp
print "Enter an item: "
item = gets.chomp
print "Enter a quantity: "
quantity = gets.chomp.to_i
print "Enter a price"
price = "$" + gets.chomp
print = "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts (store, item, quantity, price, date_bought, parent) "
insert_query += "VALUES ('#{store}','#{item}','#{quantity}','#{price}','#{parent}');"

db_conn = PG.connect({:dbname => "receipts_db"})

db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.value

db_conn.close