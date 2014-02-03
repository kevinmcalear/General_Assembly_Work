require 'pg'


db_conn = PG.connect(:dbname => 'travel_db', :host => 'localhost')

f = File.new("places_data.csv", "a+")

f.each do |line|
  sq_input = "INSERT INTO places (name) VALUES ('#{line}');"

  db_conn.exec(sq_input)
end

f.close

db_conn.close