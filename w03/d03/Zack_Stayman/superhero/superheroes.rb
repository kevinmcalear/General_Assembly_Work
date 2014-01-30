require 'pg'
require 'pry'

def enter
  print "PRESS ENTER TO CONTINUE"
  gets.chomp
end
select_query = "SELECT * FROM superheroes;"

begin

  puts `clear`
  puts "**********************************************"
  puts "WELCOME TO THE SUPERHERO REGISTRATION DATABASE"
  puts "          PLEASE MAKE YOUR SELECTION          "
  puts "**********************************************"
  puts ""
  puts "Press (I) to list all existing superheroes"
  puts "Press (C) to add a superhero to the database"
  puts "Press (R) to view all information for a specific superhero"
  puts "Press (U) to update a superhero's information"
  puts "Press (D) to remove a superhero from the database"
  puts "Press (S) to have all superheroes with capes be sucked into plane engines"
  puts "Press (Q) to quit the program"

  choice = gets.chomp.downcase

  case choice

  when "i"
    puts `clear`
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    list = db_conn.exec(select_query)

    db_conn.close

    list.each do |row|
      puts row["superhero_name"] + " | " + row["alter_ego"] + " | " + row["has_cape"] + " | " + row["power"] + " | " + row["arch_nemesis"]
      
    end
    enter
  when "c"

    print "What is the superhero's name? "
    name = gets.chomp

    print "What is #{name}'s alter ego? "
    alter_ego = gets.chomp

    print "Does #{name} wear a cape? "
    has_cape = gets.chomp.downcase

    while has_cape.class == String

      if has_cape == "y"
        has_cape = true

      elsif has_cape == "n"
        has_cape = false

      else
        print "Please enter y or n: "
        has_cape = gets.chomp.downcase

      end

    end
    
    print "What is #{name}'s power? "
    power = gets.chomp
    
    print "Who is #{name}'s arch-nemesis? "
    arch_nemesis = gets.chomp

    insert_query = "INSERT INTO superheroes "
    insert_query += "(superhero_name, alter_ego, has_cape, power, arch_nemesis) "
    insert_query += "VALUES ('#{name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');"

    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    db_conn.exec(insert_query)

    db_conn.close

  when "r"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    list = db_conn.exec(select_query)

    db_conn.close

    list.each do |row|
      print row["uid"] + " "
      puts row["superhero_name"]
    end

    puts "Which Superhero would you like to view the information for? "
    look_up = gets.chomp

    list.each do |row| 
      if row["uid"] == look_up
        puts ""
        puts "#{row["superhero_name"]}'s alter ego is #{row["alter_ego"]}, it is #{row["has_cape"]} that #{row["superhero_name"]} wears a cape"
        puts "#{row["superhero_name"]}'s power is #{row["power"]}, and their arch-nemesis is #{row["arch_nemesis"]}"
        puts ""
        
      end
    end
    enter
  when "u"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    list = db_conn.exec(select_query)

    puts "Which Superhero would you like to update? "
    list.each do |row|
      puts row["uid"] + " " + row["superhero_name"]
    end

    look_up = gets.chomp

    puts "What attribute would you like to update?"
    puts "press 1 to change the superheroes name"
    puts "press 2 to change the superheroes alter ego"
    puts "press 3 to change the superheroes cape"
    puts "press 4 to change the superheroes power"
    puts "press 5 to change the superheroes arch-nemesis"

    change = gets.chomp

    case change
    when "1"
      attribute = 'superhero_name'
    when "2"
      attribute = 'alter_ego'
    when "3"
      attribute = 'has_cape'
    when "4"
      attribute = 'power'
    when "5"
      attribute = 'arch_nemesis'
    end

    print "What woul you like to change it to? "
    change = gets.chomp

    update_query = "UPDATE superheroes SET #{attribute} = '#{change}' WHERE uid = '#{look_up}';"

    db_conn.exec(update_query)

    db_conn.close

  when "d"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    list = db_conn.exec(select_query)

    puts "Which Superhero would you like to update? "
    list.each do |row|
      puts row["uid"] + " " + row["superhero_name"]
    end

    id = gets.chomp

    delete_query = "DELETE FROM superheroes WHERE uid = #{id}"

    db_conn.exec(delete_query)

    db_conn.close

  when "s"
    db_conn = PG.connect( {:dbname => "superheroes_db"} )

    cape_query = "DELETE FROM superheroes WHERE has_cape = 't'"

    db_conn.exec(cape_query)

    db_conn.close
  end

end while choice != "q"


  # db_conn = PG.connect( {:dbname => "superheroes_db"} )

  # db_conn.exec(insert_query)
  # list = db_conn.exec(select_query)

  # db_conn.close