require 'pg'
require 'pry'


puts "WELCOME to RECEIPTLY"
puts ""

print "Enter a store:  "
store = gets.chomp
print "Enter an item: "
item = gets.chomp
print "Enter a price per item: "
price_per_item = gets.chomp 
print "Enter a parent: "
parent = gets.chomp

insert_query = "INSERT INTO receipts" 
insert_query += "(store, item, price_per_item, parent)" 
insert_query += "values ('#{store}','#{item}','#{price_per_item}','#{parent}'); "
select_query = "SELECT * from receipts; "

db_conn = PG.connect( :dbname => "receipts_db" )

db_conn.exec(insert_query)
results = db_conn.exec(select_query)

puts results.values

db_conn.close

# ##Other commands
# results = db_conn.exec("Select * from receipts;")
# results.each {|row| puts row}


# ## NOTE:  PG brings values in as strings
# to clean up, map the values using the transformations. 
# clean_results = results.map do |row|
#   row["id"] = row["id"].to_i
#   row["quantity"] = row["quantity"].to_id
#   row
# end 


## Must use "Require "PG""
## PG turns our program into a Postgres database client.  
## We use PG.connect(:dbname => DATABASE NAME)
## We then use ".exec(SQL QUERY )" against the variable that is set. 
##NOTE:  "numerators will interact with the values as if they are an array of hashes. "
##NOTE:  ".values will return an array of arrays. "

