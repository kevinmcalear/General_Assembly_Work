require 'pg'

puts "Welcome to the S.H.I.E.L.D. database."
puts "Please enter a command:"

puts "(I) Index - List all Super Heroes"
puts "(C) Add a Super Hero"
puts "(R) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(D) Remove a Super Hero"
puts "(Z) Remove all caped Superheroes"

entry = gets.chomp

db_conn = PG.connect( {:dbname => "superhero_db"} )

if entry == "I" 
 
  insert_query = "SELECT super_name FROM superhero;"
  db_conn.exec(insert_query)
  results = db_conn.exec(insert_query)
  puts results.values

elsif entry == "C"
  puts "What's the super name?"
  super_name = gets.chomp
  
  puts "Who's the alter ego?"
  real_name = gets.chomp
  
  puts "Does he or she have a cape?"
  cape = gets.chomp
    if cape == "Yes"
      cape = true
    else
      cape = false
    end
  
  puts "What's the super power?"
  super_power = gets.chomp

  puts "Who is their arch enemy?"
  arch_enemy = gets.chomp

  insert_query = "INSERT INTO superhero "
  insert_query += "(super_name, real_name, cape, super_power, arch_enemy) "
  insert_query += "VALUES ('#{super_name}','#{real_name}','#{cape}','#{super_power}','#{arch_enemy}');"
  db_conn.exec(insert_query)
  
  puts "Say hello to #{super_name}!!! Behind the scenes their known as #{real_name}."
elsif entry == "R"
  puts "Which hero?"
  insert_query = "SELECT super_name FROM superhero;"
  db_conn.exec(insert_query)
  results = db_conn.exec(insert_query)
  puts "Choose from the following list:"
  puts results.values

  super_name = gets.chomp

  insert_query = "SELECT * FROM superhero WHERE super_name='#{super_name}'"
  db_conn.exec(insert_query)
  results = db_conn.exec(insert_query)
  puts "Here are the powers!!! Try not to be jealous..."
  puts results.values

elsif entry == "U"
  puts "Which superhero?"
  super_name = gets.chomp
  puts "What's the new super name?"
  super_name1 = gets.chomp
  puts "What's the new alter ego?"
  real_name = gets.chomp
  puts "Is there a cape?"
  cape = gets.chomp
    if cape == "Yes"
      cape = true
    else
      cape = false
    end
  puts "What's the new super power?"
  super_power = gets.chomp
  puts "What's the new arch enemy?"
  arch_enemy = gets.chomp

  insert_query = "UPDATE superhero SET super_name ='#{super_name1}' WHERE super_name='#{super_name}'"
  insert_query = "UPDATE superhero SET real_name ='#{real_name1}' WHERE super_name='#{super_name1}'"
  insert_query = "UPDATE superhero SET cape ='#{cape}' WHERE super_name='#{super_name1}'"
  insert_query = "UPDATE superhero SET super_power ='#{super_power}' WHERE super_name='#{super_name1}'"
  insert_query = "UPDATE superhero SET super_name ='#{arch_enemy}' WHERE super_name='#{super_name1}'"
  db_conn.exec(insert_query)

  insert_query = "SELECT * FROM superhero WHERE super_name = '#{super_name1}'"
  results = db_conn.exec(insert_query)
  puts results.values

elsif entry == "D"
  puts "Which hero are we killing off?"
  super_name = gets.chomp

  insert_query = "DELETE FROM superhero WHERE super_name ='#{super_name}'"
  db_conn.exec(insert_query)
  puts "Say goodbye to #{super_name}!! MWAHAHAHAHAHAHAHAHA!!!"

elsif entry == "Z"
  insert_query = "DELETE FROM superhero WHERE cape ='false'"
  db_conn.exec(insert_query)
  puts "Capes tend to get stuck in airplane engines...."    
end

db_conn.close
    
