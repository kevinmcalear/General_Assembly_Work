require 'pg'
require 'pry'

puts "WELCOME TO THE SUPERHERO-THING-A-MA-BOB!!!!!"
puts ""

begin
  puts "What would you like to do?"

  puts " (I) Index - List all Super Heros"
  puts " (C) Add a Super Hero"
  puts " (R) View all info for a specific Super Hero"
  puts " (U) Update a Super Hero"
  puts " (D) Remove a Super Hero"
  puts " (Q) Quit Program"

  input = gets.chomp.downcase
  if input == "i"
    puts "Here's a grand list of superheroes:"

    select_query = "SELECT * FROM superheroes;"

    db_conn = PG.connect( {:dbname => "superhero_db"} )

    db_conn.exec(select_query)
    results = db_conn.exec(select_query)

    puts results.values
    db_conn.close

  elsif input == "c"

    print "Enter a superhero's name: "
    name = gets.chomp
    print "Enter the alter ego for this superhero: "
    alter_ego = gets.chomp
    print "YES / NO Your superhero has a cape: "
    cape = gets.chomp
    print "Type a single power for your superhero: "
    power = gets.chomp
    print "Enter the name of your superhero's arch nemesis:"
    arch_nemesis = gets.chomp

    insert_query = "INSERT INTO superheroes (name, alter_ego, cape, power, arch_nemesis) VALUES ('#{name}','#{alter_ego}','#{cape}','#{power}','#{arch_nemesis}');"

    select_query = "SELECT * FROM superheroes;"

    db_conn = PG.connect( {:dbname => "superhero_db"} )

    db_conn.exec(insert_query)
    results = db_conn.exec(select_query)

    puts results.values

    db_conn.close
  elsif input == "r"
    puts "Which hero would you like to see information for?"
    select_query = "SELECT name FROM superheroes;"

    db_conn = PG.connect( {:dbname => "superhero_db"} )

    db_conn.exec(select_query)
    results = db_conn.exec(select_query)

    puts results.values


    hero_selection = gets.chomp

    choice_query = "SELECT * FROM superheroes WHERE name='#{hero_selection}';"
    db_conn.exec(choice_query)
    superhero_choice = db_conn.exec(choice_query)

    puts superhero_choice.values

    db_conn.close

  elsif input == "u"
    puts "Which superhero would you like update their information?"

    db_conn = PG.connect( {:dbname => "superhero_db"} )

    select_query = "SELECT * FROM superheroes;"

    db_conn.exec(select_query)
    results = db_conn.exec(select_query)

    puts results.values

    hero_selection = gets.chomp
    choice_query = "SELECT * FROM superheroes WHERE name='#{hero_selection}';"
    db_conn.exec(choice_query)
    superhero_choice = db_conn.exec(choice_query)

    puts superhero_choice.values

    puts "What do you want to change #{hero_selection}'s alter ego to?"

    new_alter_ego = gets.chomp
    
    db_conn.exec("UPDATE superheroes SET alter_ego='#{new_alter_ego}' WHERE name='#{hero_selection}';")

    puts "True or false, does #{hero_selection} have a cape?"

    new_has_cape = gets.chomp
    
    db_conn.exec("UPDATE superheroes SET cape='#{new_has_cape}' WHERE name='#{hero_selection}';")

    puts "What do you want to change #{hero_selection}'s power to?"

    new_power = gets.chomp
    
    db_conn.exec("UPDATE superheroes SET power='#{new_power}' WHERE name='#{hero_selection}';")

    puts "What do you want to change #{hero_selection}'s arch nemesis to?"

    new_arch_nemesis = gets.chomp
    
    db_conn.exec("UPDATE superheroes SET arch_nemesis='#{new_arch_nemesis}' WHERE name='#{hero_selection}';")

    db_conn.close

  elsif input == "d"
    puts "Which superhero would you like assassinate? Input name."

    db_conn = PG.connect( {:dbname => "superhero_db"} )

    select_query = "SELECT * FROM superheroes;"

    db_conn.exec(select_query)
    results = db_conn.exec(select_query)

    puts results.values

    hero_selection = gets.chomp
    
    db_conn.exec("DELETE FROM superheroes WHERE name='#{hero_selection}';")



  else input != "q"
  "You messed up, please choose another option. Idiot."
end

  



end while input != "q"

