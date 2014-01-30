require 'pg'

heroes_conn = PG.connect( {:dbname => "superheroes_db"} )

# heroes_conn.exec(query)

example = [{name: "Deadpool", alter_ego: "Wade Wilson", cape: false, power: "healing", arch_nemesis: "Taskmaster"}]

def list_all(arr)



  arr.each do |hero|
    puts "#{hero[:superhero_name]}| #{hero[:alter_ego]}| #{hero[:cape]}| #{hero[:power]}| #{hero[:arch_nemesis]} "
  end
  
end

system("clear")



  puts "Superhero Menu"
  puts
  puts " (I) Index - List all Super Heros"
  puts " (C) Add a Super Hero"
  puts " (R) View all info for a specific Super Hero"
  puts " (U) Update a Super Hero"
  puts " (D) Remove a Super Hero"

  response = gets.chomp.upcase

  case response
  when "I"
    heroes = heroes_conn.exec("SELECT superhero_name FROM superheroes;")
    heroes.each do |hero|
      puts hero["superhero_name"]
    end
  when "C"
    print "superhero_name: "
    superhero_name = gets.chomp
    print "alter_ego: "
    alter_ego = gets.chomp
    print "has_cape: "
    cape = gets.chomp
    print "power: "
    power = gets.chomp
    print "arch_nemesis: "
    arch_nemesis = gets.chomp

  insert_query = "INSERT INTO superheroes "
  insert_query += "(superhero_name, alter_ego, has_cape, power, arch_nemesis) "
  insert_query += "VALUES ('#{superhero_name}','#{alter_ego}','#{cape}', '#{power}', '#{arch_nemesis}');"

  heroes_conn.exec(insert_query)

  when "R"

    heroes = heroes_conn.exec("SELECT id, superhero_name FROM superheroes;")
    heroes.each do |hero|
      print hero["id"] + " " 
      puts hero["superhero_name"]
    end
    print "Select hero by number:"
    hero_id = gets.chomp
    hero = heroes_conn.exec("SELECT * FROM superheroes WHERE id = #{hero_id};")
    hero[0].each {|stat| puts "#{stat[0]}: #{stat[1]} "}

  when "U"

    heroes = heroes_conn.exec("SELECT id, superhero_name FROM superheroes;")
    heroes.each do |hero|
      print hero["id"] + " " 
      puts hero["superhero_name"]
    end
    print "Select hero by number:"
    hero_id = gets.chomp
    hero = heroes_conn.exec("SELECT * FROM superheroes WHERE id = #{hero_id};")
    hero[0].each {|stat| puts "#{stat[0]}: #{stat[1]} "}

        print "superhero_name: "
    superhero_name = gets.chomp
    print "alter_ego: "
    alter_ego = gets.chomp
    print "has_cape: "
    cape = gets.chomp
    print "power: "
    power = gets.chomp
    print "arch_nemesis: "
    arch_nemesis = gets.chomp

  update_query = "UPDATE superheroes SET "
  update_query += "(superhero_name, alter_ego, has_cape, power, arch_nemesis) ="
  update_query += " ('#{superhero_name}','#{alter_ego}','#{cape}', '#{power}', '#{arch_nemesis}') WHERE id = #{hero_id};"

  heroes_conn.exec(update_query)

  when "D"
    heroes = heroes_conn.exec("SELECT id, superhero_name FROM superheroes;")
    heroes.each do |hero|
      print hero["id"] + " " 
      puts hero["superhero_name"]
    end
    print "Select hero by number:"
    hero_id = gets.chomp
    hero = heroes_conn.exec("DELETE FROM superheroes WHERE id = #{hero_id};")
  end
    
      

