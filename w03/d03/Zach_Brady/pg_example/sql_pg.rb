require 'pg' 
require 'pry'

db_conn = PG.connect( {:dbname => "receipts_db"})

binding.pry

db_conn.close