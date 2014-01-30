require 'pry'
require 'PG'

db_conn = PG.connect(:dbname => "superhero_db")


system 'clear'
begin 

puts "============================"
puts "Welcome to Superhero MySpace"
puts "============================"

puts "Please Select Your Action"

puts "(I) Index - List all Super Heros"
puts "(C) Add a Super Hero"
puts "(R) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(D) Remove a Super Hero"
puts "(DC) Remove all Super Heros in Capes"
puts "(Q) Quit Superhero MySpace"

answer = gets.chomp.downcase
if answer == "i"
  results = db_conn.exec('SELECT * from superhero;')
  
  system 'clear'
  puts "============================"
  puts "List of Superheroes"
  puts "============================"
  results.each {|name| puts name["superhero_name"]}  


elsif answer == "c"
  system 'clear'
  puts "============================"
  puts "Create a Superhero"
  puts "============================"
  
  print "Enter a Superhero name:  "
  superhero_name = gets.chomp
  print "What is their alter-ego? "
  alter_ego = gets.chomp
  print "Does the superhero wear a cape? (true/false) "
  has_cape = gets.chomp.downcase
  print "What is the superhero's special power? "
  power = gets.chomp
  print "Who is the superhero's arch nemesis? "
  arch_nemesis = gets.chomp

  insert_query = "INSERT into superhero"
  insert_query += "(superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  insert_query += "VALUES"
  insert_query += "('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}')"

  
  db_conn.exec(insert_query)
  
elsif answer == "r"
  results = db_conn.exec('SELECT * from superhero;')
  system 'clear'
  puts "============================"
  puts "Which Superhero would you like to view details for?"
  puts "============================"
  
  results.each {|name| puts name["superhero_name"]}
  puts "============================"
  
  print "Which Superhero would you like to view details for? "
  superhero = gets.chomp

  system 'clear'
  puts "============================"
  puts "Details for #{superhero}"
  puts "============================"
  
  superhero_details = db_conn.exec("SELECT * FROM superhero WHERE superhero_name = '#{superhero}';")

  # superhero_details.each {|attribute| puts attribute}
  puts "ID            : #{superhero_details[0]["id"]}"
  puts "Superhero Name: #{superhero_details[0]["superhero_name"]}"
  puts "Alter Ego     : #{superhero_details[0]["alter_ego"]}"
  puts "Cape          : #{superhero_details[0]["has_cape"]}"
  puts "Power         : #{superhero_details[0]["power"]}"
  puts "Arch Nemesis  : #{superhero_details[0]["arch_nemesis"]}"

  puts "============================"


elsif answer == "u"
  results = db_conn.exec('SELECT * from superhero;')
  
  system 'clear'
  puts "============================"
  puts "Which Superhero would you like to update?"
  puts "============================"
  results.each {|name| puts name["superhero_name"]}
  puts "============================"
  superhero = gets.chomp

  superhero_details = db_conn.exec("SELECT * FROM superhero WHERE superhero_name = '#{superhero}';")

  
  system 'clear'
  puts "============================"
  puts "Details for #{superhero}"
  puts "============================"
  
  superhero_details = db_conn.exec("SELECT * FROM superhero WHERE superhero_name = '#{superhero}';")

  puts "ID            : #{superhero_details[0]["id"]}"
  puts "Superhero Name: #{superhero_details[0]["superhero_name"]}"
  puts "Alter Ego     : #{superhero_details[0]["alter_ego"]}"
  puts "Cape          : #{superhero_details[0]["has_cape"]}"
  puts "Power         : #{superhero_details[0]["power"]}"
  puts "Arch Nemesis  : #{superhero_details[0]["arch_nemesis"]}"
  puts "============================"

  puts "============================"
  puts "Modify Details for #{superhero}"
  puts "============================"
  

  print "Enter a Superhero name:  "
  superhero_name = gets.chomp
  print "What is their alter-ego? "
  alter_ego = gets.chomp
  print "Does the superhero wear a cape? (true/false) "
  has_cape = gets.chomp.downcase
  print "What is the superhero's special power? "
  power = gets.chomp
  print "Who is the superhero's arch nemesis? "
  arch_nemesis = gets.chomp

  update_query = "UPDATE superhero "
  update_query += "SET superhero_name = '#{superhero_name}',"
  update_query += "alter_ego = '#{alter_ego}',"
  update_query += "has_cape = '#{has_cape}',"
  update_query += "power = '#{power}',"
  update_query += "arch_nemesis = '#{arch_nemesis}'"
  update_query += "WHERE superhero_name = '#{superhero}';"

  db_conn.exec(update_query)

elsif answer == "d"  
  results = db_conn.exec('SELECT * from superhero;')
  
  system 'clear'
  puts "============================"
  puts "Which Superhero would you like to delete?"
  puts "============================"
  results.each {|name| puts name["superhero_name"]}
  puts "============================"
  superhero = gets.chomp

  delete_query = "DELETE from superhero "
  delete_query += "WHERE superhero_name = '#{superhero}';"

  db_conn.exec(delete_query)

elsif answer == "dc"
  results = db_conn.exec('SELECT * from superhero WHERE has_cape = true;')
  

  system 'clear'
  puts "============================"
  puts "List of Superheroes with Capes"
  puts "============================"
  results.each {|name| puts name["superhero_name"]}
  puts "============================"
  print "Should we delete these Superheroes? (Y/N): "
  delete = gets.chomp
  puts "============================"  

    if delete == 'y'
      delete_query = "DELETE from superhero "
      delete_query += "WHERE has_cape = true;"

      db_conn.exec(delete_query)
      
    else puts "The World remains safe"   
    end 

elsif answer != 'q'  

end 
end while answer != 'q' 
  
db_conn.close
