require 'pg'

puts `clear`
puts "--------------------------------"
puts "--------------------------------"
puts "Welcome To The Superheroes Database!"
puts "--------------------------------"
puts "--------------------------------"
puts ""
puts ""
puts "Please Select From the Following Options:"
puts ""
puts "(I) - List all Super Heros"
puts "(C) - Add a Super Hero"
puts "(R) - View all info for a specific Super Hero"
puts "(U) - Update a Super Hero"
puts "(D) - Remove a Super Hero"
puts "(Q) - Quit"
puts ""
puts "Enter Choice:"
choice = gets.chomp.downcase

db_conn = PG.connect( {:dbname => "superheroes_db"})


case choice
  when "i"
    i_query = "SELECT superhero_name FROM superheroes;" 
    results = db_conn.exec(i_query)
    puts ""
    puts results.values
  when "c"
    print "Enter Name: "
    superhero_name = gets.chomp
    print "Enter alter_ego: "
    alter_ego = gets.chomp 
    print "Has cape? (true or false)"
    has_cape = gets.chomp
    print "Enter power: "
    power = gets.chomp
    print "Arch Nemesis: "
    arch_nemesis = gets.chomp

    insert_query= "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}')"

    results = db_conn.exec(insert_query)
  when "r"
    print "Enter Name: "
    superhero = gets.chomp
    query = "SELECT * FROM superheroes WHERE superhero_name = '#{superhero}';"
    results = db_conn.exec(query)
    puts results.values

end

db_conn.close