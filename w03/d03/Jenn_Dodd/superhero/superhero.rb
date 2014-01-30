require 'pg'
require 'pry'

system "clear"

puts "==============================================="
puts "WELCOME TO THE SUPER HERO REGISTRATION DATABASE"
puts "==============================================="
puts 

# CREATE TABLE superheroes (
#   id serial PRIMARY KEY,
#   superhero_name varchar(50) NOT NULL,
#   alter_ego varchar(50) NOT NULL,
#   has_cape bool,
#   power varchar(50) NOT NULL,
#   arch_nemesis varchar(50) NOT NULL
#   );

begin 
  puts
  puts "Please choose from our menu below:"
  puts 
  puts "  1. List all Super Heros"
  puts "  2. Add a Super Hero"
  puts "  3. View all info for a specific Super Hero"
  puts "  4. Update a Super Hero"
  puts "  5. Remove a Super Hero"
  print "  >"

  choice = gets.chomp.to_i
  system "clear"

  case choice
  when 1
    list_heroes = "SELECT * FROM superheroes;"
    super_connection = PG.connect({:dbname => "superheroes_db"})
      results = super_connection.exec(list_heroes)
    super_connection.close 
    results.each do |superhero| 
      puts "Name: #{superhero["superhero_name"]}, Alter Ego: #{superhero["alter_ego"]}, Wears a cape?: #{superhero["has_cape"]}, Power: #{superhero["power"]}, Arch Nemesis: #{superhero["arch_nemesis"]}" 
    end
  when 2
    puts "What is the Super Hero's name?"
    superhero_name = gets.chomp
    puts "What is their alter ego?"
    alter_ego = gets.chomp
    puts "Does the Super Hero have a cape? (t or f)"
    has_cape = gets.chomp
    puts "What is their power?"
    power = gets.chomp
    puts "Who is their nemesis?"
    arch_nemesis = gets.chomp
    new_hero = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"

      super_connection = PG.connect({:dbname => "superheroes_db"})
      results = super_connection.exec(new_hero)
    super_connection.close
    puts "#{superhero_name} added!"

  when 3
    puts "Which Super Hero's info would you like?" 
    puts "(Use their Super Hero name.)"
    superhero_name = gets.chomp
    get_hero = "SELECT * FROM superheroes WHERE superhero_name = '#{superhero_name}';"

    super_connection = PG.connect({:dbname => "superheroes_db"})
      results = super_connection.exec(get_hero)
    super_connection.close
    results.each do |superhero| 
      puts "Name: #{superhero["superhero_name"]}, Alter Ego: #{superhero["alter_ego"]}, Wears a cape?: #{superhero["has_cape"]}, Power: #{superhero["power"]}, Arch Nemesis: #{superhero["arch_nemesis"]}" 
    end

  when 4
    puts "Which Super Hero would you like to update?" 
    puts "(Use their Super Hero name.)"
    superhero_to_change = gets.chomp
    puts "What is the Super Hero's name?"
    superhero_name = gets.chomp
    puts "What is their alter ego?"
    alter_ego = gets.chomp
    puts "Does the Super Hero have a cape? (t or f)"
    has_cape = gets.chomp
    puts "What is their power?"
    power = gets.chomp
    puts "Who is their nemesis?"
    arch_nemesis = gets.chomp
    update_hero = "UPDATE superheroes SET superhero_name = '#{superhero_name}', alter_ego = '#{alter_ego}', has_cape = '#{has_cape}', power ='#{power}', arch_nemesis='#{arch_nemesis}' WHERE superhero_name = '#{superhero_to_change}';"

    super_connection = PG.connect({:dbname => "superheroes_db"})
      results = super_connection.exec(update_hero)
    super_connection.close
    puts "#{superhero_to_change} has been updated."
    
  when 5
    puts "Which Super Hero's info would you like?" 
    puts "(Use their Super Hero name.)"
    superhero_name = gets.chomp
    delete_hero = "DELETE FROM superheroes WHERE superhero_name = '#{superhero_name}';"
    super_connection = PG.connect({:dbname => "superheroes_db"})
      results = super_connection.exec(delete_hero)
    super_connection.close
    puts "#{superhero_name} has been deleted."
  else
    puts "Invalid option..."
  end

end while choice != 6

puts "Thank you for using the Super Hero Registration Database."
  
