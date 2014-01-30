require 'pg'

def menu
  puts "==============================================="
  puts "Welcome to the Superhero Database"
  puts ""
  puts "Please enter a response from the options below:"
  puts ""
  puts "(I) Index - List all Super Heros"
  puts "(A) Add a Super Hero"
  puts "(V) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(R) Remove a Super Hero"
  puts "(Q) Quit"
  puts "-----------------------------------------------"

end

begin

menu
user_response = gets.chomp

case user_response
  when "i"
    select_query = "SELECT * FROM superheroes;"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    results = db_conn.exec(select_query)

    puts results.values

    db_conn.close

    menu
    user_response = gets.chomp
  when "a"
    puts "Please Enter Super Hero Information:"
    puts ""

    print "Name: "
    get_name = gets.chomp

    print "Alter Ego: "
      get_alter_ego = gets.chomp
    print "Has Cape? (Y) or (N): "
      cape_boolean = gets.chomp
        if cape_boolean == "y"
          get_cape = true
        else cape_boolean == "n"
          get_cape = false
        end
    print "Power: "
      get_power = gets.chomp
    print "Arch Nemesis: "
      get_arch_nemesis = gets.chomp

    insert_query = "INSERT INTO superheroes "
    insert_query += "(superhero_name, alter_ego, has_cape, power, arch_nemesis) "
    insert_query += "VALUES ('#{get_name}','#{get_alter_ego}','#{get_cape}','#{get_power}', '#{get_arch_nemesis}');" 

    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    select_query = "SELECT superhero_name FROM superheroes;"
    db_conn.exec(insert_query)
    results = db_conn.exec(select_query)

    puts results.values

    db_conn.close 

    menu
    user_response = gets.chomp
  when "v"
    print "Please enter super hero name: "
    get_name = gets.chomp

    select_query = "SELECT * FROM superheroes WHERE superhero_name='#{get_name}';"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    results = db_conn.exec(select_query)

    puts results.values

    db_conn.close

    menu
    user_response = gets.chomp
  when "u"
    puts "Please enter super hero name whom you would like to update."
    get_name = gets.chomp

    puts "Please enter particular information to update (only one attribute per session)."
    get_attribute = gets.chomp

    puts "Please enter updated super hero information."
    get_updated_info = gets.chomp

    select_query = "UPDATE superheroes SET #{get_attribute}='#{get_updated_info}' WHERE superhero_name='#{get_name}';"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    results = db_conn.exec(select_query)

    puts results.values

    db_conn.close

    menu
    user_response = gets.chomp
  when "r" 

    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    options = db_conn.exec("SELECT * FROM superheroes")
    puts options.values

    puts "Please enter the id number of the super hero whom you would like to remove."

    get_id = gets.chomp.to_i

    results = db_conn.exec("DELETE FROM superheroes WHERE id=#{get_id};")

    puts results.values

    db_conn.close
    
    menu
    user_response = gets.chomp
  else 
    puts "That was not a valid option. Please try again!"
    menu
    user_response = gets.chomp

end while user_response != "q" end

