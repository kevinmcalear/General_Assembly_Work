require 'pg'
require 'pry'
db_conn = PG.connect( {:dbname => "superheros_db"} )


puts "WELCOME TO SUPERHERO LAND!!!!!!!!!"
puts

begin

puts   
puts "( L ) List all Super Heros ."
puts
puts "( A ) Add a Super Hero."
puts
puts "( V ) View all info for a specific Super Hero."
puts
puts "( U ) Update a Super Hero."
puts
puts "( R ) Remove a Super Hero."
puts
puts "( Q ) uit this program."
puts
selection = gets.chomp.upcase

case selection

when "L"
system "clear"
get_heros = "SELECT * FROM superheros;"

results = db_conn.exec(get_heros)
puts
results.each { |row| puts "Super Hero Name: #{row["superhero_name"]} Alter Ego: #{row["alter_ego"]} Has A Cape? #{row["has_cape"]} Super Power: #{row["power"]} Enemy: #{row["arch_nemesis"]}" }

when "A"  
system "clear"
puts "Tell me a super hero to add to our land fine sir..."
puts "-----------------------------------------"
puts

print "Tell me your superhero's name: "
superohero_name = gets.chomp

print "Now tell me his alter ego:"
alter_ego = gets.chomp

puts "Do they have a cape?"
print "Please put ( true )  or  ( false ) : "
has_cape = gets.chomp

print "Their super power: "
power = gets.chomp

print "Their arch nemesis: "
enemy = gets.chomp


add_hero = "INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superohero_name}','#{alter_ego}','#{has_cape}','#{power}','#{enemy}');"
db_conn.exec(add_hero)







when "V"
system "clear"
puts "Now Tell Me The Super Hero's Name You Want To Hang With."
name = gets.chomp

get_hero = "SELECT * FROM superheros WHERE superhero_name = '#{name}';"

results = db_conn.exec(get_hero)

puts "YOUR STATS"
puts "-----------"
results.each { |row| puts "Super Hero Name: #{row["superhero_name"]} Alter Ego: #{row["alter_ego"]} Has A Cape? #{row["has_cape"]} Super Power: #{row["power"]} Enemy: #{row["arch_nemesis"]}" }

when "U"
system "clear"
puts
get_heros = "SELECT * FROM superheros;"

results = db_conn.exec(get_heros)
puts
results.each { |row| puts "Super Hero Name: #{row["superhero_name"]} Alter Ego: #{row["alter_ego"]} Has A Cape? #{row["has_cape"]} Super Power: #{row["power"]} Enemy: #{row["arch_nemesis"]}" }
puts
puts "------------------------------------------"
puts "Which do you want to change about a super hero?"
puts 
puts "CHOOSE FROM: superhero_name OR alter_ego OR has_cape OR power OR arch_nemesis"
column = gets.chomp
puts "Which Super Hero?"
name = gets.chomp
puts "What do you want it to be?"
updated = gets.chomp

get_hero = "UPDATE superheros SET #{column} = '#{updated}' WHERE superhero_name = '#{name}';"

results = db_conn.exec(get_hero)


when "R"
system "clear"
get_heros = "SELECT * FROM superheros;"
results = db_conn.exec(get_heros)
results.each { |row| puts "Super Hero Name: #{row["superhero_name"]} Alter Ego: #{row["alter_ego"]} Has A Cape? #{row["has_cape"]} Super Power: #{row["power"]} Enemy: #{row["arch_nemesis"]}" }
puts
puts "________________________________________________________________"
puts "Now Tell Me The Super Hero Name You Want To Kill And Kick Out."
name = gets.chomp

remove_hero = "DELETE FROM superheros WHERE superhero_name = '#{name}';"
db_conn.exec(remove_hero)
else
  system "clear"
  puts "THAT'S NOT AN OPTION...sheesh."
end
end while selection != "Q"

# binding.pry
db_conn.close
