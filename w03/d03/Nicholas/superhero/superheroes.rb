require 'pg'

db_conn = PG.connect( :dbname => 'heroes' )

puts `clear`

def menu
  puts"======================================"
  puts
  puts"   SUPERHERO MENU"
  puts" (I) Index of Super Heroes"
  puts" (C) Add a Super Hero"
  puts" (R) View all info for specific Hero"
  puts" (U) Update info for a Super Hero"
  puts" (D) Remove a Super Hero"
  puts" (Q) Quit"
  puts
  puts"======================================"

  user_choice = gets.chomp.downcase
  return user_choice
end
user_choice = menu

while user_choice != "q"

  case user_choice

  when "i"

    shero_list = db_conn.exec("SELECT superhero_name FROM superheroes;")
    puts shero_list.values

  when "c"
    puts "Name of Superhero to add: "
    name = gets.chomp
    puts "Name of Superhero's alter ego: "
    alter_ego = gets.chomp
    puts "Does your hero have a cape? (y or n): "
    cape = gets.chomp
    until cape == "y" || cape == "n"
      puts "Enter y or n"
    end
    if cape == "y"
      has_cape = true
    else cape == "n"
      has_cape = false
    end
    puts "Name the Superhero's power: "
    power = gets.chomp
    puts "Name the Superhero's arch nemesis: "
    arch_nemesis = gets.chomp


    insert_hero = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
    insert_hero += "VALUES ('#{name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"
    db_conn.exec(insert_hero)


  when "r"
    shero_list = db_conn.exec("SELECT id, superhero_name FROM superheroes;")
    puts shero_list.values

    puts "Enter the number of the hero you would like to view: "
    hero_num = gets.chomp

    hero_info = db_conn.exec("SELECT * FROM superheroes WHERE id=#{hero_num};")
    puts "-----------------------"
    puts hero_info.values
    puts "-----------------------"

  when "u"
    shero_list = db_conn.exec("SELECT id, superhero_name FROM superheroes;")
    puts shero_list.values

    puts "Enter the number of the hero you would like to update: "
    update_hero = gets.chomp

    puts `clear`

    puts "What would you like to update? "
    puts "(1) Name | (2) Alter Ego | (3) Cape Status | (4) Power | (5) Arch Nemesis"
    response = gets.chomp.to_i
    case response

    when 1
      puts "Rename this hero: "
      new_name = gets.chomp
      db_conn.exec("UPDATE superheroes SET superhero_name='#{new_name}' WHERE id='#{update_hero}'; ")

    when 2
      puts "Rename this hero's Alter Ego: "
      new_alter_ego = gets.chomp
      db_conn.exec("UPDATE superheroes SET alter_ego='#{new_alter_ego}' WHERE id='#{update_hero}'; ")

    when 3
      puts "Rename this hero's Cape Status"
      puts "Would you like this hero to have a cape? (y or n): "
      new_cape_status = gets.chomp
      if new_cape_status == "y"
        new_cape = true
      else
        new_cape = false
      end
      db_conn.exec("UPDATE superheroes SET has_cape='#{new_cape}' WHERE id='#{update_hero}'; ")

    when 4
      puts "Rename this hero's Power: "
      new_power = gets.chomp
      db_conn.exec("UPDATE superheroes SET power='#{new_power}' WHERE id='#{update_hero}'; ")

    when 5
      puts "Rename this hero's Arch Nemesis: "
      new_arch_nemesis = gets.chomp
      db_conn.exec("UPDATE superheroes SET arch_nemesis='#{new_arch_nemesis}' WHERE id='#{update_hero}'; ")
    end


  when "d"
    shero_list = db_conn.exec("SELECT superhero_name FROM superheroes;")
    puts shero_list.values
    puts "Enter the name of a Superhero to delete: "
    kill_hero = gets.chomp
    db_conn.exec("DELETE FROM superheroes WHERE superhero_name='#{kill_hero}';")
  else
    puts "Not a choice!"
  end
  user_choice = menu
end

db_conn.close