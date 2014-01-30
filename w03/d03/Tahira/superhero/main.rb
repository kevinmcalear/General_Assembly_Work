require "pg"


system "clear"

puts "============================"
puts "Superhero Database"
puts "============================"

db_conn = PG.connect( {:dbname => "superheroes_db"} )

begin

  puts ""
  puts "Please select an option"  
  puts "I - List all Super Heros"
  puts "C - Add a Super Hero"
  puts "R - View all infor for a specific Super Hero"
  puts "U - Update a Superhero"
  puts "D - Delete a Superhero"
  puts "H - Delete all caped Superheroes"
  puts "Q"
  print "> "

  choice = gets.chomp.downcase

  if choice == "i"

    select_query = "SELECT superhero_name FROM superheroes;"
    results = db_conn.exec(select_query)

    results.each {|hero| puts "#{hero["superhero_name"]}"}

  elsif choice == "c"

    print "Enter superhero_name: "
    superhero_name = gets.chomp
    print "Enter alter ego: "
    alter_ego = gets.chomp
    print "Has cape (Y/N)?"
    has_cape = gets.chomp 
    print "Enter power:"
    power = gets.chomp
    print "Enter arch nemesis: "
    arch_nemesis = gets.chomp

    sql = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
    sql += "VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');"

    db_conn.exec(sql)    

  elsif choice == "r"
   
  puts "Enter superheroes name:"
  entered_name = gets.chomp

  select_query = "SELECT * FROM superheroes WHERE superhero_name = '#{entered_name}';"


  results_array = db_conn.exec(select_query)
  results = results_array[0]

  puts "Superhero Name: #{results["superhero_name"]}"
  puts "Alter Ego: #{results["alter_ego"]}"
  puts "Has Cape?: #{results["has_cape"]}"
  puts "Power: #{results["power"]}"
  puts "Arch Nemesis: #{results["arch_nemesis"]}"
    

  elsif choice == "u"
    puts "Enter superheroes name:"
    entered_name = gets.chomp
    puts "What do you want to update?"
    puts "Superhero name, Alter Ego, Cape, Power, Nemesis"
    update_attribute = gets.chomp
    puts "What do you want to change value to?"
    change = gets.chomp

    case update_attribute
    when "Superhero name"
      update = "superhero_name"
    when "Alter Ego"
      update = "alter_egp"
    when "Cape"
      update = "has_cape"
    when "Power"
      update = "power"
    when "Nemesis"
      update = "arch_nemesis"
    end

    sql = "UPDATE superheroes SET #{update} = '#{change}' WHERE superhero_name = '#{entered_name}'"

    db_conn.exec(sql) 

  elsif choice == "d"
    puts "Enter superheroes name:"
    entered_name = gets.chomp

     sql = "DELETE FROM superheroes WHERE superhero_name = '#{entered_name}'"

    db_conn.exec(sql) 
  elsif choice == "h"

    sql = "DELETE FROM superheroes WHERE has_cape = 'true'"

    db_conn.exec(sql) 

    puts "All caped super heroes deleted!"

  elsif choice != "q"
    
    puts "Please select a valid option"
  
  end

end while choice != "q"

db_conn.close