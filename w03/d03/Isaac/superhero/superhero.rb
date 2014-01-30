# ### Menu Spec

# Your program should have a menu that allows you to perform the following actions:

# * (I) Index - List all Super Heros
# * (C) Add a Super Hero
# * (R) View all info for a specific Super Hero
# * (U) Update a Super Hero
# * (D) Remove a Super Hero

# * superhero_name
# * alter_ego
# * has_cape?
# * power
# * arch_nemesis

require 'pg'
require 'pry'

system "clear"

choice = ""
while choice != "q"

puts "WELCOME TO THE SUPER HEROES"
puts

puts "(I) Index - List all Super Heros"
puts "(C) Add a Super Hero"
puts "(R) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(D) Remove a Super Hero"
puts "(Q) Quit"

choice = gets.chomp.downcase

db_conn = PG.connect( {:dbname => "superheroes_db"} )

  if choice == "i"
    select_query = "SELECT * FROM superheroes;"
    puts "LIST OF SUPERHEROES"
    results = db_conn.exec(select_query)
    results.each do |row|
      row.each do |key, value|
        puts value if key == "superhero_name"
      end
    end
    puts

  elsif choice == "c"
    puts "ADD A SUPERHERO"
    puts "What is the superhero name?"
    superhero_name = gets.chomp
    puts "What is the alter ego?"
    alter_ego = gets.chomp.downcase
    puts "Does the superhero have a cape? true / false "
    has_cape = gets.chomp
    puts "What's the superhero power?"
    power = gets.chomp
    puts "Who is the superhero's arch enemy?"
    arch_nemesis = gets.chomp

    insert_query = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}'); "
    db_conn.exec(insert_query)
    puts
  elsif choice == "r"
    puts "VIEW ALL INFO FOR A SUPERHERO"
    puts "Choose a superhero"
    infohero = gets.chomp
    select_query = "SELECT * FROM superheroes WHERE superhero_name = '#{infohero}' ;"
    results = db_conn.exec(select_query)
    results.each do |row|
      puts row
    end
  elsif choice == "u"
    puts "UPDATE A SUPERHERO"
    puts "What superhero do you want to update?"
    superhero_choice = gets.chomp
    puts" UPDATE WHAT? choose: superhero_name / alter_ego / has_cape / power / arch_nemesis "
    update_choice = gets.chomp
    puts "UPDATE TO WHAT?"
    update_info = gets.chomp
    update_query = "UPDATE superheroes SET #{update_choice} = '#{update_info}' WHERE superhero_name = '#{superhero_choice }' ; "
    db_conn.exec(update_query)
    puts
elsif choice == "d"
  puts "REMOVE A SUPERHERO"
  puts "What superhero do you want to remove?"
  superhero_remove = gets.chomp
  remove_query = "DELETE FROM superheroes WHERE superhero_name = '#{superhero_remove}' ;"
  db_conn.exec(remove_query)
end


end













