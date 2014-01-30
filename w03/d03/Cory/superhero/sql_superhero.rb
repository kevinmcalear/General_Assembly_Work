require 'pg'
require 'pry'

begin

puts "Welcome to Superhero DB"
puts ""

puts "(I) Index - List all Super Heros"
puts "(C) Add a Super Hero"
puts "(R) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(D) Remove a Super Hero"
puts "(Q) to quit"

choice = gets.chomp.downcase


    if choice == "i"
      select_query = "SELECT * FROM superheros;"
      db_conn = PG.connect({:dbname => "superheros_db"})

      results = db_conn.exec(select_query)
      puts results.values
      db_conn.close

    elsif choice == "c"
      print "Enter a Superhero name: "
      superhero_name = gets.chomp
      print "What is #{superhero_name}s alter ego? "
      alter_ego = gets.chomp
      print "Does #{superhero_name} have a cape? "
      has_cape = gets.chomp
      print "What is #{superhero_name}s power? "
      power = gets.chomp
      print "Who is #{superhero_name}s arch nemesis? "
      arch_nemesis = gets.chomp

      insert_query = "INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');" 
      select_query = "SELECT * FROM superheros;"

      db_conn = PG.connect({:dbname => "superheros_db"})

      db_conn.exec(insert_query)
      results = db_conn.exec(select_query)
      puts results.values
      db_conn.close

    elsif choice == "r"
      print "Enter superhero name: "
      superhero_name = gets.chomp

      select_query = "SELECT * FROM superheros WHERE superhero_name = '#{superhero_name}';"
      db_conn = PG.connect({:dbname => "superheros_db"})

      results = db_conn.exec(select_query)
      puts results.values
      db_conn.close
    
    elsif choice == "u"
      print "Enter a superhero to update: "
      superhero_name = gets.chomp
      print "What would you like to update about #{superhero_name}? "
      print "(a) Alter ego, (c) has a cape, (p) power or (n) arch nemesis? "
      choice = gets.chomp.downcase
        if choice == "a" 
          print "Enter a new alter ego: "
          alter_ego = gets.chomp
         
          select_query = "UPDATE superheros SET alter_ego = '#{alter_ego}' WHERE superhero_name = '#{superhero_name}'; "
          db_conn = PG.connect({:dbname => "superheros_db"})

          results = db_conn.exec(select_query)
          puts results.values
          db_conn.close
        end

        if choice == "c"
          print "Has a cape?: "
          has_cape = gets.chomp
         
          select_query = "UPDATE superheros SET has_cape = '#{has_cape}' WHERE superhero_name = '#{superhero_name}'; "
          db_conn = PG.connect({:dbname => "superheros_db"})

          results = db_conn.exec(select_query)
          puts results.values
          db_conn.close
        end

        if choice == "p"
          print "What is the #{superhero_name}s updated power? "
          power = gets.chomp
         
          select_query = "UPDATE superheros SET power = '#{power}' WHERE superhero_name = '#{superhero_name}'; "
          db_conn = PG.connect({:dbname => "superheros_db"})

          results = db_conn.exec(select_query)
          puts results.values
          db_conn.close
        end

        if choice == "n"
          print "Who is #{superhero_name}s new arch nemesis? "
          arch_nemesis = gets.chomp

          select_query = "UPDATE superheros SET arch_nemesis = '#{arch_nemesis}' WHERE superhero_name = '#{superhero_name}'; "
          db_conn = PG.connect({:dbname => "superheros_db"})

          results = db_conn.exec(select_query)
          puts results.values
          db_conn.close
        end

    elsif choice == "d"
      puts "Which superhero do you want to delete? "
      superhero_name = gets.chomp

      delete_query = "DELETE FROM superheros WHERE superhero_name = '#{superhero_name}';"
      db_conn = PG.connect({:dbname => "superheros_db"})

      results = db_conn.exec(delete_query)
      puts results.values
      db_conn.close
      
    elsif choice != "q"
      puts "Invalid option!"
    end

end while choice != "q"




