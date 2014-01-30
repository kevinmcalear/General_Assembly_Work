require 'pg'
require 'pry'

# CREATES CONNECTION TO DB FOR PERSISTANT STORAGE OF DATA

db_conn = PG.connect( {:dbname => "superhero_db"} )


############################################
############### MAIN MENU ##################
###########################################

puts "WELCOME TO THE INTERNET SUPERHERO DATABASS"
puts ""

begin
  puts ""
  puts "Main Menu"
  puts ""
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  puts "(Q) Exit the program"
  puts

  response = gets.chomp.downcase

  case response
  when "i"
    select_query = "SELECT * FROM superheroes;"
    results = db_conn.exec(select_query)

    # ITERATE THROUGH RESULTS TO MAKE 'EM LOOK PRETY
    results.each do | superhero |
      puts "Name: #{superhero["superhero_name"]} "
      puts "Alter ego: #{superhero["alter_ego"]} " 
      puts "Has cape: #{superhero["has_cape"]} "
      puts "Super power: #{superhero["power"]} "
      puts "Arch-nemesis: #{superhero["arch_nemesis"]} "
      puts        
    end

############################################
################## INDEX ####################
###########################################

  when "c"
    # GETS USER INPUT

    print "Enter the superhero's name: "
    superhero_name = gets.chomp
    print "Enter his or her alter ego: "
    alter_ego = gets.chomp
    print "Enter true or false if they do or don't wear a cape: "
    has_cape = gets.chomp 
    print "Enter his or her super power: "
    power = gets.chomp
    print "Enter his or her arch-nemesis: "
    arch_nemesis = gets.chomp

    # DEFINE INSERT QUERY

    insert_query = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}', '#{arch_nemesis}');"

    # INSERT DATA

    db_conn.exec(insert_query)

############################################
############ INDIVIDUAL PROFILE ##############
###########################################

  when "r"
    print "What superhero's profile do you wish to see: "
    superhero_name = gets.chomp

    select_query = "SELECT * FROM superheroes WHERE superhero_name='#{superhero_name}';"
    result = db_conn.exec(select_query)

    result.each do | superhero |
      puts "Name: #{superhero["superhero_name"]} "
      puts "Alter ego: #{superhero["alter_ego"]} " 
      puts "Has cape: #{superhero["has_cape"]} "
      puts "Super power: #{superhero["power"]} "
      puts "Arch-nemesis: #{superhero["arch_nemesis"]} "
      puts        
    end

############################################
############### UPDATE A PROFILE #############
###########################################

  when "u"
    print "Enter what superhero's profile needs updated: "
    superhero_name = gets.chomp

    elect_query = "SELECT * FROM superheroes WHERE name='#{superhero_name}';"
    result = db_conn.exec(select_query)
    puts ""
    puts "Current profile: "
    result.each do | superhero |
      puts "Name: #{superhero["superhero_name"]} "
      puts "Alter ego: #{superhero["alter_ego"]} " 
      puts "Has cape: #{superhero["has_cape"]} "
      puts "Super power: #{superhero["power"]} "
      puts "Arch-nemesis: #{superhero["arch_nemesis"]} "
      puts        
    end
    puts ""
    print "What information needs to be corrected? "
    out_of_date = gets.chomp.downcase
    puts "New information: "
    new_information = gets.chomp

    case out_of_date
    when 'name'
      out_of_date = 'superhero_name'
    when 'alter ego'
      out_of_date = 'alter_ego'
    when 'has cape'
      out_of_date = 'has_cape'
    when 'super power'
      out_of_date = 'power'
    when 'arch-nemesis'
      out_of_date = 'arch_nemesis'
    end

    insert_query = "UPDATE superheroes SET #{out_of_date} = '#{new_information}' WHERE superhero_name='#{superhero_name}';"

    select_query = "SELECT * FROM superheroes WHERE superhero_name='#{superhero_name}';"
    result = db_conn.exec(select_query)

    puts "PROFILE UPDATED "
    puts ""

    # INSERT DATA

    db_conn.exec(insert_query)

############################################
############### DELETE PROFILE ###############
###########################################

  when "d"
    print "What superhero needs to be eliminated: "
    superhero_name = gets.chomp

    deletion_query = "DELETE FROM superheroes WHERE superhero_name='#{superhero_name}';"
    db_conn.exec(deletion_query)
    puts ""
    puts "SUPERHERO HAS BEEN ELIMINATED"
    puts ""

  when "q"
    exit
  
  else 
    puts "Come again? "
    puts ""
  end
end while response != "q"

# CLOSE THE DATABASE CONNEC

db_conn.close