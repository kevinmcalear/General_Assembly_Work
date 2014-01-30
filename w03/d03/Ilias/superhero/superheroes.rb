require "pg"
require "pry"

db_conn = PG.connect(:dbname => "superheros_db")

select_data = "SELECT * FROM superheros;"

begin
system "clear"

puts "ANYONE COULD BE A SUPERHERO"
puts "...are you?"
puts ""
puts "Choose your path."
puts "(I) List all superheros"
puts "(C) Create a superhero"
puts "(R) View all info for a specific hero"
puts "(U) Update a hero"
puts "(D) Delete a hero"
puts "(Q) Get outta hur"

user_input = gets.chomp.upcase

  case user_input

  when "I"
    results = db_conn.exec(select_data)
    i = 1
      results.each do |row|
        puts "#{i}." + row["superhero_name"]
        i += 1
      end
    puts "Press any key to escape"
    user_input = gets.chomp
    when "C"
    puts "Who are you?"
    superhero_name = gets.chomp
    puts "What is your alter ego?"
    alter_ego = gets.chomp
    puts "Do you have a cape? (true/false)"
    has_cape = gets.chomp.downcase
    puts "What is your special power?"
    power = gets.chomp
    puts "And finally, who is your ARCH NEMESIS?!"
    arch_nemesis = gets.chomp

    insert_data = "INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
    insert_data += "VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"
    db_conn.exec(insert_data)


    puts "Name: #{superhero_name} was added to the Superhero League!"

  when "R"
    results = db_conn.exec(select_data)
      i = 1
      results.each do |row|
        puts "#{i}." + row["superhero_name"]
        i += 1
      end
    puts "Enter the name of the hero you would like to see more specs on..."
    user_super_choice = gets.chomp
    read_results = db_conn.exec("SELECT * FROM superheros WHERE superhero_name='#{user_super_choice}';")
    read_results.each{ |row| puts "Name: #{row["superhero_name"]}\nAlias: #{row["alter_ego"]}\nPower: #{row["power"]}\nNemesis: #{row["arch_nemesis"]}" }
    puts "Press any key to escape"
    user_input = gets.chomp

  when "U"
    results = db_conn.exec(select_data)
      i = 1
      results.each do |row|
        puts "#{i}." + row["superhero_name"]
        i += 1
      end
    puts "Which superhero would you like to update?"
    user_super_choice = gets.chomp
    puts "Which attribute would you like to change?\n1.superhero_name\n2.alter_ego\n3.has_cape\n4.power\n5.arch_nemesis"
    attribute_change = gets.chomp
    puts "What would you like to change it to?"
    new_attribute_value = gets.chomp
    change_value = db_conn.exec("UPDATE superheros SET #{attribute_change} = '#{new_attribute_value}' WHERE superhero_name = '#{user_super_choice}';")
    puts "#{user_super_choice}'s #{attribute_change} was updated to #{new_attribute_value}"
    puts "Press any key to escape"
    user_input = gets.chomp

  when "D"
    results = db_conn.exec(select_data)
      i = 1
      results.each do |row|
        puts "#{i}." + row["superhero_name"]
        i += 1
      end
    puts "Which superhero would you like to delete?"
    delete_choice = gets.chomp
    delete_hero = db_conn.exec("DELETE FROM superheros WHERE superhero_name = '#{delete_choice}';")
    puts "#{delete_choice} was unmercifully slaughtered!"
    puts "Press any key to escape"
    user_input = gets.chomp

  end

end while user_input != "Q"

db_conn.close





