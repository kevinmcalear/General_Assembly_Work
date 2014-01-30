  require 'pg'

  c = PG.connect(:dbname => "superheros_db")

  # f = File.open("superheroes.csv", "a+")

  # f.each do |line|
  #   player = line.split(",")
  #   name = player[0].gsub("'","")
  #   alter_ego = player[1]
  #   cape = player[2]
  #   power = player[3]
  #   arch_nemesis = player[4]

  #   sql = "INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis)"
  #   sql += "VALUES ( '#{name}', '#{alter_ego}', '#{cape}', '#{power}', '#{arch_nemesis}');"

  #   c.exec(sql)

  # end

  # f.close 
  begin

    puts "WELCOME TO THE SUPERHERO DATABASE!"

    puts "Enter a selection: 
    (I) Index - List all Super Heros
    (C) Add a Super Hero
    (R) View all info for a specific Super Hero
    (U) Update a Super Hero
    (D) Remove a Super Hero
    (S) Remove all caped super heroes
    (Q) Quit"



    choice = gets.chomp.upcase



    case choice
    when "I" 
      superhero_list = c.exec("SELECT * FROM superheros;")
      superhero_list.each {|row| puts "Name: #{row["superhero_name"]}, Alter Ego: #{row["alter_ego"]}, Has Cape: #{row["has_cape"]}, Power: #{row["power"]}, Arch Nemesis: #{row["arch_nemesis"]}"} 
    when "C"
      puts "Enter superhero_name:"
      superhero_name = gets.chomp
      puts "Enter alter_ego:"
      alter_ego = gets.chomp
      puts "Does the superhero have a cape (true or false)?"
      has_cape = gets.chomp
      puts "Enter power:"
      power = gets.chomp
      puts "Enter arch nemesis:"
      arch_nemesis = gets.chomp

      c.exec("INSERT INTO superheros (superhero_name, alter_ego, has_cape, power, arch_nemesis) VALUES ('#{superhero_name}', '#{alter_ego}', #{has_cape}, '#{power}', '#{arch_nemesis}');")

    when "R"
      puts "Which superhero would you like to view?"
      superhero_name_view = gets.chomp
      superhero_view = c.exec("SELECT * FROM superheros WHERE superhero_name='#{superhero_name_view}';")
      superhero_view.each {|row| puts "Name: #{row["superhero_name"]}, Alter Ego: #{row["alter_ego"]}, Has Cape: #{row["has_cape"]}, Power: #{row["power"]}, Arch Nemesis: #{row["arch_nemesis"]}"} 
    
    when "U"
      puts "Which superhero would you like to update?"
      super_hero_name = gets.chomp
      puts "Which attribute would you like to update 'superhero_name', 'alter_ego', 'has_cape', 'power', or 'arch_nemesis'?"
      update_super_hero = gets.chomp.downcase
      puts "What do you want to update it to:"
      updated_value = gets.chomp


      c.exec("UPDATE superheros SET #{update_super_hero}='#{updated_value}'  WHERE superhero_name = '#{super_hero_name}';")


    when "D" 
      puts "Which superhero would you like to delete, enter their name:"
      superhero_name_delete = gets.chomp
      c.exec("DELETE FROM superheros WHERE superhero_name='#{superhero_name_delete}';" )
  

    when "S"
      c.exec("DELETE FROM superheros WHERE has_cape='true';")
    end 

  end while choice != "Q"
  c.close




