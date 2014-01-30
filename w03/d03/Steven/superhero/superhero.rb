require 'pg'
require 'pry'

db_conn = PG.connect( {:dbname => "superhero_db"} )


  puts "YOU ARE NOW IN THE SECRET SUPER HERO DATABASE"
  puts "------------------------------------------------"
  puts "WHAT WOULD YOU LIKE TO DO?"

  puts "I - List all superheroes "
  puts "C - Add a superhero"
  puts "R - View All info for a specific Super Hero"
  puts "U - Update a Super Hero"
  puts "D - Remove a Super Hero"
  puts "Q - Quit"
  main_choice = gets.chomp.upcase


  while main_choice != "Q"
  case main_choice
  when "I"
    results = db_conn.exec("SELECT * FROM superheroes;")
    results.each do |row|
    row.each {|key, value| puts "#{key} || #{value}"}
  end
  when "C"
     puts "What is the superhero's name?"
     hero_name = gets.chomp
     puts "What is their alter-ego?"
     alter_ego = gets.chomp
     puts "Do they have a cape?(true or false)"
     has_cape = gets.chomp.downcase
     puts "What is their power?"
     power = gets.chomp.upcase
     puts "Who is their arch nemesis?"
     arch_nemesis = gets.chomp

    results = db_conn.exec("INSERT INTO superheroes (hero_name, alter_ego, has_cape, power, arch_nemesis)
 VALUES ('#{hero_name}','#{alter_ego}','#{has_cape}','#{power}', '#{arch_nemesis}');")

  when "R"
    results = db_conn.exec("SELECT hero_name FROM superheroes;")
    puts "which hero would you like to view?"
    results.each do |row|
      row.each {|key, value| puts "#{key} || #{value}"}
    end
    name = gets.chomp
    results = db_conn.exec("Select * FROM superheroes WHERE hero_name='#{name}';")

  when "U"
    results = db_conn.exec("SELECT * FROM superheroes;")
    puts "Which superhero would you like to update?"
    results.each do |row|
      row.each {|key, value| puts "#{key} || #{value}"}
    end
    hero = gets.chomp
    results = db_conn.exec("Select * FROM superheroes WHERE hero_name='#{name}';")
    puts "Which attribute would you like to update?"
    attribute = gets.chomp
    puts "what would you like to change it to?"
    attribute_value = gets.chomp
    results = db_conn.exec("UPDATE superheroes SET #{attribute} = '#{attribute_value}' WHERE hero_name='#{hero}';")
  when "D"
    results = db_conn.exec("SELECT hero_name FROM superheroes;")
    puts "Which hero would you like to delete?"
    results.each do |row|
      row.each {|key, value| puts "#{key} || #{value}"}
    end
    hero_to_delete = gets.chomp
    results = db_conn.exec("DELETE FROM superheroes WHERE hero_name ='#{hero_to_delete}'")
  end
  puts "What now?"
  puts "I - List all superheroes "
  puts "C - Add a superhero"
  puts "R - View All info for a specific Super Hero"
  puts "U - Update a Super Hero"
  puts "D - Remove a Super Hero"
  puts "Q - Quit"
  main_choice = gets.chomp.upcase
end

  db_conn.close



