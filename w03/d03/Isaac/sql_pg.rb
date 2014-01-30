require 'pg'
require 'pry'

puts "WELCOME TO RECEIPT.LY"
puts ""

print "Enter a store:"
store = gets.chomp
print "Enter an item"
item = gets.chomp
print "Enter a price per item" 
price = gets.chomp + "$"
print "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts (store, item, price_per_item, parent) VALUES ('#{store}', '#{item}', '#{price}', '#{parent}');"

select_query = "SELECT * FROM RECEIPTS;"


db_conn = PG.connect( {:dbname => "receipts_db"} )
db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.values

db.conn.close

# db_conn = PG.connect( {:dbname => "receipts_db"} )

# binding.pry

# db_conn.close

# results = db_conn.exec("SELECT * FROM receipts;")

# results.each { |row| puts row }

# results.each do  |row| 
#   row.each { |key, value| puts "COLUMN NAME: #{key}, VALUE: #{value}"}
# end

# results is more than an array, it is a PG::result

# ls results  will give you the pg methods over results

# results = db_conn.exec("SELECT * FROM receipts;")

# clean_results = results.map do |row|
#   row["id"] = row["id"].to_i
#   row["quantity"] = row["quantity"].to_i
#   row
# end





# PG

#   * require ‘pg’
#   * changes our program to a postgresql db client
#   * To open -> PG.connect(dbname => table)
#   * c.close
#   * c.exec
#   * r=c.exec(“SELECT…”) -> [ { } ]
#   * r.values -> [ [ ] ]







