require "pg"
require "pry"

puts "EVERYONE IS A SUPERHERO"
puts "... you are a superhero"
puts ""

puts "Select from the following options"
puts "(L) List all superheros"
puts "(R) View all info for a specific hero"
puts "(U) Update a hero"
puts "(D) Delete a hero"



case
puts "Who are you?"
superhero_name = gets.chomp
puts "What is your alter ego?"
alter_ego = gets.chomp
puts "Do you have a cape? (Y/N)"
has_cape = gets.chomp
puts "What is your special power?"
power = gets.chomp
puts "And finally, who is your ARCH NEMESIS?!"
arch_nemesis = gets.chomp


insert_data = "INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
insert_data += "VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"

select_data = "SELECT * FROM superheros"

db_conn = PG.connect(:dbname => "superheros_db")

db_conn.exec(insert_data)
results = db_conn.exec(select_data)
puts results

db_conn.close
