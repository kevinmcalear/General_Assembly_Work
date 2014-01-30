require 'pg'
require 'pry'
#require_relative "superheroes.csv"

  db_conn = PG.connect( { :dbname => "superheroes_db" } )

  select_query = "SELECT * FROM superheroes;"
  names_query = "SELECT superhero_name FROM superheroes;"

system "clear"

puts "========================================"

puts "...Welcome to the Superhero Database..."

puts "========================================"

begin

  puts "Please choose from the following options..."
  puts ""
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  puts "(E) Delete those suckers who don't wear capes"
  puts "(Q) Quit"
  puts ""
  print "> "

  choice = gets.chomp.downcase

  if choice == "i"
    results = db_conn.exec(names_query)
    puts "Superheroes:"
    puts results.values
    puts ""

  elsif choice == "c"
    puts "What's the superheroes' name?"
    superhero_name = gets.chomp
    puts "Who is #{superhero_name}'s alter ego?"
    alter_ego = gets.chomp
    puts "Does #{superhero_name} wear a cape? (Yes or No)"
    has_cape = gets.chomp
    puts "What is #{superhero_name}'s super power?"
    power = gets.chomp
    puts "Who is #{superhero_name}'s arch nemesis?"
    arch_nemesis = gets.chomp

  insert_query = "INSERT INTO superheroes"
  insert_query += "(superhero_name, alter_ego, has_cape,power, arch_nemesis) "
  insert_query += "VALUES ('#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"
  db_conn.exec(insert_query)
  results = db_conn.exec(select_query)

  elsif choice == "r"
    puts "Which superhero would you like to discover more about?"
    results = db_conn.exec(names_query)
    puts results.values
    superhero = gets.chomp
    results = db_conn.exec("SELECT * FROM superheroes WHERE superhero_name = '#{superhero}';")
    results.each do |superhero|
      puts "#{superhero["superhero_name"]}, #{superhero["alter_ego"]}, #{superhero["has_cape"]}, #{superhero["power"]}, #{superhero["arch_nemesis"]}"
    end
  
  elsif choice == "u" #Update a superhero - ask for name, attribute to change, attribute to change to
      puts "Which superhero's data would you like to update?"
      results = db_conn.exec(names_query)
      puts results.values
      name = gets.chomp
      puts "Which characteristic:"
      puts "'superhero_name', 'alter_ego', 'has_cape', 'power', or 'arch_nemesis' would you like to update?"
      attribute = gets.chomp
      puts "What would you like to change #{attribute} to?"
      change_to = gets.chomp


      results = db_conn.exec("UPDATE superheroes SET #{attribute} = '#{change_to}' WHERE superhero_name = '#{name}';")
      puts results.values
  
  elsif choice == "d"
    puts "Which Super Hero woud you like to delete?"
    results = db_conn.exec(names_query)
    puts results.values
    name_to_delete = gets.chomp
    db_conn.exec("DELETE FROM superheroes WHERE superhero_name='#{name_to_delete}';")

    
  elsif choice == "e"
    db_conn.exec("DELETE FROM superheroes WHERE has_cape= 'f';")
  
  elsif choice != "q"
    puts "Invalid Option"
  end

end while choice != "q"

db_conn.close

