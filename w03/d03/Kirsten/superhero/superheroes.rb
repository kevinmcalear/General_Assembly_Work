require 'pg'
require 'pry'

begin 
db_conn = PG.connect( {:dbname => "superheroes_db"} )

puts "Welcome to the superhero database"
puts ""
puts "What would you like to do?"
puts "(I) Index - List all Super Heros"
puts "(C) Add a Super Hero"
puts "(R) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(D) Remove a Super Hero"
puts "(H) Remove all caped heroes"
puts "(Q) Quit"

choice = gets.chomp.upcase


case choice
when "I"
  list = db_conn.exec("SELECT * FROM superheroes;")
  list.each {|row| puts "Name: #{row["superhero_name"]}, alter-ego: #{row["alter_ego"]}, Cape? #{row["has_cape"]}, power: #{row["power"]}, arch-nemesis: #{row["arch_nemesis"]}" }

when "C"
  puts "What superhero would you like to add?"
  hero_name = gets.chomp
  puts "What is their alter-ego?"
  alter_ego = gets.chomp
  puts "Do they have a cape? true/false"
  cape = gets.chomp
  puts "What is their super power?"
  power = gets.chomp
  puts "Who is their arch-nemesis?"
  arch_nemesis = gets.chomp

  db_conn.exec("INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{hero_name}', '#{alter_ego}', '#{cape}','#{power}','#{arch_nemesis}');")


when "R"
  puts "Which hero would you like to get information about?"
  chosen_hero = gets.chomp
  hero = db_conn.exec("SELECT superhero_name, alter_ego, has_cape, power, arch_nemesis FROM superheroes WHERE superhero_name = '#{chosen_hero}';")
  hero.each {|row| puts "Name: #{row["superhero_name"]}, alter-ego: #{row["alter_ego"]}, Cape? #{row["has_cape"]}, power: #{row["power"]}, arch-nemesis: #{row["arch_nemesis"]}"}


when "U"
  puts "Which hero would you like to update information for?"
  update_hero = gets.chomp
  puts "What info would you like to update?"
  item = gets.chomp
    if item == "alter-ego"
      puts "What is their alter-ego?"
      new_value = gets.chomp
      db_conn.exec("UPDATE superheroes SET alter_ego='#{new_value}' WHERE superhero_name = '#{update_hero}';")
    elsif item == "cape"
      puts "Do they wear a cape? true or false"
      new_value = gets.chomp
      db_conn.exec("UPDATE superheroes SET cape='#{new_value}' WHERE superhero_name = '#{update_hero}';")

    elsif item == "power"
      puts "What is their power?"
      new_value = gets.chomp
      db_conn.exec("UPDATE superheroes SET power='#{new_value}' WHERE superhero_name = '#{update_hero}';")

    elsif item == "arch-nemesis"
      puts "Who is their arch-nemesis?"
       new_value = gets.chomp
      db_conn.exec("UPDATE superheroes SET arch_nemesis='#{new_value}' WHERE superhero_name = '#{update_hero}';")

    else 
      puts "That is not a vaild choice."
    end


when "D"
  puts "Which superhero would you like to remove?"
  remove = gets.chomp
  db_conn.exec("DELETE FROM superheroes WHERE superhero_name = '#{remove}'")

when "H"
  puts "Are you sure?"
  confirm = gets.chomp
  if confirm == "yes"
    db_conn.exec("DELETE FROM superheroes WHERE has_cape = 'true';")
    puts "OK, caped heroes deleted."
  else 
    puts "OK, not deleted."
  end
end

end while choice != "Q"

db_conn.close

