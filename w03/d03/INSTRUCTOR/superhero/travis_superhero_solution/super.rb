require 'pg'

# presents users with options
puts "Would you like to:"
puts "(I) See an index of all superheroes"
puts "(C) Create a superhero,"
puts "(R) Read a the values of a particular superhero,"
puts "(U) Update a superhero,"
puts "(D) Destroy a superhero,"
puts "(T) Terminate all caped superheroes"

input = gets.chomp.capitalize
db_conn = PG.connect(:dbname => 'superheroes_db', :host => 'localhost')

def print_values(pg_obj)
  pg_obj.values.each do |entry|
    puts ""
    puts "Name: " + entry[1]
    puts "Alter Ego: " + entry[2]
    puts "Has cape? " + entry[3]
    puts "Superpower: " + entry[4]
    puts "Arch Nemesis: " + entry[5]
  end
end

case input
when "I"
  pg_object= db_conn.exec("SELECT * FROM superheroes;")
  puts "Here they are: "
  print_values(pg_object)
when "C"
  puts "Great, what's their name?"
  name = gets.chomp

  puts "What's their alter ego?"
  alter = gets.chomp

  puts "True of False: do they have a cape?"
  cape = gets.chomp

  puts "What is their superpower?"
  superpower = gets.chomp

  puts "Who's their arch nemesis?"
  arch_nemesis = gets.chomp

  sql_string = "INSERT INTO superheroes (name, alter_ego, has_cape, power, arch_nemesis) " +
               "VALUES ('#{name}', '#{alter}', '#{cape}', '#{superpower}', '#{arch_nemesis}');"
  db_conn.exec(sql_string)
  puts "#{name} is now logged in the superhero database"
when "R"
  puts "What's the name of the superhero you want to look at?"
  input_name = gets.chomp.capitalize

  pg_object = db_conn.exec("SELECT * FROM superheroes WHERE name='#{input_name}'")
  print_values(pg_object)
when "U"
  puts "Interesting. Who do you want to update?"
  target = gets.chomp

  puts "What attribute do you want to update?"
  new_attribute = gets.chomp

  puts "Cool. What value do you want to assign to this value?"
  new_value = gets.chomp

  db_conn.exec("UPDATE superheroes SET #{new_attribute}='#{new_value}'")

  puts "Great. #{target}'s #{new_attribute} value is now #{new_value}."
when "D"
  puts "Oh no! Which superhero do you want to destroy?"
  target = gets.chomp
  db_conn.exec("DELETE from superheroes where name='#{target}'")
  puts "#{target} is dead."
when "T"
  puts "Woah. That's drastic. But it's done"
  db_conn.exec("DELETE from superheroes WHERE has_cape='true'")
else
  "You didn't enter a valid command"
end

