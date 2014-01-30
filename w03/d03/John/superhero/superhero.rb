require 'pg'

def csv(choice)
  db_conn = PG.connect( {:dbname => "superhero_db"} )
    
  f = File.open("superheroes.csv", "r")

  f.each do |line|
    line_array = line.split(",")
    
    if choice == 'p'
      values = "'" + line_array.join("', '") + "'"
      query = "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES (#{values});"
    else
      hero_name = line_array[0]
      query = "DELETE FROM superheroes WHERE superhero_name = '#{hero_name}';" 
    end
    db_conn.exec(query)
  end

  f.close
  db_conn.close
end

def add_hero
  print "What is our superhero's name? "
  name = gets.chomp
  print "What is the superhero's alter ego? "
  secret_id = gets.chomp
  print "Does our superhero wear a cape? "
  cape = gets.chomp
  print "What is the super power? "
  power = gets.chomp
  print "Who is our superhero's archnemesis? "
  nemesis = gets.chomp

  return "INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{name}', '#{secret_id}', '#{cape}', '#{power}', '#{nemesis}');"
end

def hero_info
  print "Which superhero do you want to view? "
  hero = gets.chomp

  return "SELECT * FROM superheroes WHERE superhero_name = '#{hero}';"
end

def update_info
  print "Which hero do you want to update? "
  hero = gets.chomp
  print "Which attribute do you want to update? "
  attribute = gets.chomp
  print "What do you want the new data to be? "
  new_data = gets.chomp

  return "UPDATE superheroes SET #{attribute} = '#{new_data}' WHERE superhero_name = '#{hero}';"
end

def delete_hero
  print "Do you want to delete all caped superheroes (y/n)? "
  caped = gets.chomp

  if caped == 'y'
    return "DELETE FROM superheroes WHERE has_cape = 't'"
  else
    print "Which hero do you want to delete? "
    hero = gets.chomp

    return "DELETE FROM superheroes WHERE superhero_name = '#{hero}';"
  end
end

def query_exec(query)
  db_conn = PG.connect( {:dbname => "superhero_db"} )
  results = db_conn.exec(query)
  
  puts
  results.each do |row|
     row.each {|key, value| puts "#{key}, #{value}"}
     puts
  end
  puts


  db_conn.close
end


choice = ''
while choice != 'e'
  puts "(I) Index - List all Super Heros"
  puts "(C) Add a Super Hero"
  puts "(R) View all info for a specific Super Hero"
  puts "(U) Update a Super Hero"
  puts "(D) Remove a Super Hero"
  puts "(P) Populate CSV data"
  puts "(PP) Unpopulate CSV data"
  puts "(E) Exit"
  choice = gets.chomp.downcase

  case choice
  when 'i'
    query = "SELECT * FROM superheroes;"
  when 'c'
    query = add_hero  
  when 'r'
    query = hero_info
  when 'u'
    query = update_info
  when 'd'
    query = delete_hero
  when 'p'
    csv(choice)
  when 'pp'
    csv(choice)
  end

  query_exec(query)

end










