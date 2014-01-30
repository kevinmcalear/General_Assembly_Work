require 'pg'
require 'pry'
def output(select_query)
  db_conn = PG.connect( {:dbname => "superheros"})
  list = db_conn.exec(select_query)
  list.each {|i| puts "Name: #{i["name"]} | Alter ego: #{i["alter_ego"]} | cape: #{i["has_cape"]} | Power: #{i["power"]} | Arch_nemesis: #{i["arch_nemesis"]}"}
  db_conn.close
end

def input(insert_query)
  db_conn = PG.connect({:dbname => "superheros"})
  db_conn.exec(insert_query)
  db_conn.close
end


puts "Welcome to superheros database"
puts ""


choice = ""
while choice != "e"

puts "Here is what you can do:
* (I) Index - List all Super Heros
* (C) Add a Super Hero
* (R) View all info for a specific Super Hero
* (U) Update a Super Hero
* (D) Remove a Super Hero
* (Z) Remove all caped superheros
* (J) Refresh the whole table (drop table, create table)
* (E) Exit the database"

choice = gets.chomp.downcase

  case choice
  when "i"
     select_query = "SELECT * FROM superheros"
     output(select_query) 
  when "c"
    puts "Please enter the name of superhero:"
    name = gets.chomp.downcase
    puts "Please enter the alter ego of superhero:"
    alter_ego = gets.chomp.downcase
    puts "Please tell if the superhero has a cape(true/false)"
    has_cape = gets.chomp.downcase
    puts "What power does he have?"
    power = gets.chomp.downcase
    puts "Who's his arch nemesis?"
    arch_nemesis = gets.chomp.downcase
    insert_query = "INSERT INTO superheros "
    insert_query += "(name, alter_ego, has_cape, power, arch_nemesis)"
    insert_query += " VALUES('#{name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"
    input(insert_query)
    puts ""
    puts ""
  when "r"
    puts "Please enter the name of superhero:"
    name = gets.chomp
    select_query = "SELECT * FROM superheros WHERE name='#{name}';"
    output(select_query)
    puts ""
    puts ""
  when "u"
    puts "Who do you want to update? Please enter name from the list"
    select_query = "SELECT * FROM superheros"
    output(select_query)
    name = gets.chomp.downcase
    puts "Please choose the attribute that you want to update from the list above(name;power;etc..)"
    old_attr = gets.chomp.downcase
    puts "Please enter new attribute for this person"
    new_attr = gets.chomp.downcase
    insert_query = "UPDATE superheros SET #{old_attr} = '#{new_attr}' WHERE name = '#{name}';"
    input(insert_query)
  when "d"
    puts "Who would you like to remove from our database. Please enter name"
    select_query = "SELECT * FROM superheros"
    output(select_query)
    name = gets.chomp.downcase
    insert_query = "DELETE FROM superheros WHERE name = '#{name.capitalize}';"
    input(insert_query)
  when "e"
    puts "goodbye"
  when "z"
    puts "All caped superheros will be deleted. Are you sure? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y"
      insert_query = "DELETE FROM superheros WHERE has_cape = 'true'"
      input(insert_query)
    elsif answer == "n"
      puts "no problem, you can choose something else"
    else
      puts "Please type y or n"
    end
  when "j"
    puts "This command will destroy all your data. Are you sure? (y/n)"
    answer = gets.chomp.downcase
    if answer == "y"
        insert_query = "DROP TABLE superheros"
      input(insert_query)
      insert_query = "CREATE TABLE superheros (id serial PRIMARY KEY, name varchar(50), alter_ego varchar(50), has_cape bool, power varchar(50), arch_nemesis varchar(50));"
      input(insert_query)
      puts "Database has been refreshed"
    elsif answer == "n"
      puts "good"
    else
      puts "please enter y or n"
    end
  else
    puts "Please enter correct letter"
  end
end