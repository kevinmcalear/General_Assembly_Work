require 'pg'
require 'pry'

puts "WELCOME TO RECEIPT.LY"
puts "Enter a store:"
store = gets.chomp
print "Enter an item:"
item = gets.chomp
print "Enter a price:"
price = gets.chomp
print "Enter a parent:"
parent = gets.chomp

db_conn = PG.connect({:dbname => "receipts_db"})

insert_query = "INSERT INTO receipts (store, item, price, parent) VALUES ('#{store}','#{item}','#{price}','#{parent}');"

select_query = "SELECT * FROM receipts;"
db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.values


db_conn.close