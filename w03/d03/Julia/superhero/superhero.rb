require 'PG'
require 'pry'

puts "*********************************"
puts "WELCOME TO THE SUPERHERO DATABASE"
puts "*********************************"
puts ""
puts "Please make a selection from the menu:"

def main_menu
puts ""
puts "(I) Index - List all Super Heroes
(C) – Add a Super Hero
(R) – View all info for a specific Super Hero
(U) – Update a Super Hero
(D) – Remove a Super Hero
(CC) – Clear All Cape Wearers
(Q) Quit"
end

puts main_menu

user_choice = gets.chomp.upcase

superheroes_conn = PG.connect({:dbname => "superheroes_db"})

while user_choice != "Q"
case user_choice
  when "I"
    index = superheroes_conn.exec("SELECT * FROM players;")
    print index.values
    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase
  when "C"
    puts "What is the super hero's name?"
    superhero_name = gets.chomp
    puts "What is the super hero's alter ego?"
    alter_ego = gets.chomp
    puts "Does the super hero have a cape? (Y/N)"
    has_cape = gets.chomp.upcase
    if has_cape == "Y"
      hase_cape = true
    else
      has_cape = false
    end
    puts "What is the super hero's power?"
    power = gets.chomp
    puts "Who is the super hero's archnemesis?"
    arch_nemesis = gets.chomp

    add_query = "INSERT INTO players (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"
    superheroes_conn.exec(add_query)
    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase
  when "R"
    puts "Which superhero would you like info for?\n"
    superhero_name = gets.chomp
    info_query = "SELECT * FROM players WHERE superhero_name='#{superhero_name}';"
    superhero_info = superheroes_conn.exec(info_query)
    superhero_info.values.each do |value|puts "\nName: #{value[1]}"
      puts "Alter Ego: #{value[2]}"
      puts "Cape?: #{value[3]}"
      puts "Strength is: #{value[4]}"
      puts "Archnemesis is: #{value[5]}"
    end

    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase
  when "U"
    puts "Which superhero would you like to update?"
    superhero_to_update = gets.chomp
    puts "Would you like to update the superhero's name? (Y/N)"
    choice = gets.chomp.upcase
    if choice == "Y"
      puts "What would you like the superhero's new name to be?"
      superhero_name = gets.chomp
      update_query = "UPDATE players SET superhero_name='#{superhero_name}' WHERE superhero_name='#{superhero_to_update}';"
      superheroes_conn.exec(update_query)
    end
    puts "Would you like to update the superhero's alter ego? (Y/N)"
    choice = gets.chomp.upcase
    if choice == "Y"
      puts "What would you like the superhero's new alter ego to be?"
      alter_ego = gets.chomp
      update_query = "UPDATE players SET alter_ego='#{alter_ego}' WHERE superhero_name='#{superhero_to_update}';"
      superheroes_conn.exec(update_query)
    end
    puts "Would you like to update the superhero's cape status? (Y/N)"
    choice = gets.chomp.upcase
    if choice == "Y"
      puts "Should the superhero have a cape? (Y/N)"
      cape_choice = gets.chomp.upcase
      if cape_choice == "Y"
        has_cape = true
      else
        has_cape = false
      end
      update_query = "UPDATE players SET has_cape='#{has_cape}' WHERE superhero_name='#{superhero_to_update}';"
      superheroes_conn.exec(update_query)
    end
    puts "Would you like to change the superhero's power? (Y/N)"
    choice = gets.chomp.upcase
    if choice == "Y"
      puts "What would you like the superhero's new power to be?"
      power = gets.chomp
      update_query = "UPDATE players SET power='#{power}' WHERE superhero_name='#{superhero_to_update}';"
      superheroes_conn.exec(update_query)
    end
    puts "Would you like to change the superhero's archnemesis? (Y/N)"
    choice = gets.chomp.upcase
    if choice == "Y"
      puts "Who would you like the superhero's archnemesis to be?"
      arch_nemesis = gets.chomp
      update_query = "UPDATE players SET arch_nemesis='#{arch_nemesis}' WHERE superhero_name='#{superhero_to_update}';"
      superheroes_conn.exec(update_query)
    end

    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase

  when "D"
    puts "Which superhero would you like to remove?"
    superhero_to_remove = gets.chomp

    delete_query = "DELETE FROM players WHERE superhero_name='#{superhero_to_remove}'"
    superheroes_conn.exec(delete_query)
    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase

  when "CC"
    puts "Not sure why you'd want to delete all the cape wearers, but here we go..."
    cape_delete_query = ("DELETE FROM players WHERE has_cape='true';")
    superheroes_conn.exec(cape_delete_query)
    puts "All cape wearers have been deleted."
    puts "\nWhat would you like to do next?"
    puts main_menu
    user_choice = gets.chomp.upcase

  else
      puts "Please enter a valid option!"
      puts main_menu
      user_choice = gets.chomp.upcase
  end
end

puts "Goodbye!"

superheroes_conn.close