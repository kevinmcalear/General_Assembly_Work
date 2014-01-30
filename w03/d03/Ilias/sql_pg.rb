require 'pg'
require 'pry'

puts "WELCOME TO RECEIPT.LY"
puts ""

print "ENTER a store: "
store = gets.chomp

print "Enter an item: "
item = gets.chomp

print "Enter a price per item: "
price = "$" + gets.chomp

print "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts"
insert_query += "(store, item, price_per_item, parent)"
insert_query += "VALUES ('#{store}', '#{item}', '#{price}', '#{parent}');"

select_query = "SELECT * FROM receipts;"

db_conn = PG.connect({:dbname => "instructor"})

db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.values

db_conn.close
