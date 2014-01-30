require 'pg'
require 'pry'

select_query = "SELECT * FROM superheroes;"
db_connect = PG.connect( {:dbname => "superhero_db"} )

results = db_connect.exec(select_query)

puts `clear`
puts "============================"
puts            "Welcome to the Superhero App!"
puts "============================"

puts "Choose your hero"  
puts " (I) Index - List all Super Heros "
puts " (A) Add a Super Hero "
puts " (V) View all info for a specific Super Hero" 
# puts " (U) Update a Super Hero" 
puts " (R) Remove a Super Hero"
puts " (Q) Quit"
puts ""
print " >" 

  choice = gets.chomp.downcase

  case choice

  when "i"

      if results.count < 1
        puts "No superheroes yet!"
      else  
        results.each {|superheroes| puts superheroes}
      end

    when "a"
      print "Superhero Name: "
      superhero_name = gets.chomp
      print "Alter Ego Name: "
      alter_ego = gets.chomp
      print "Has a cape? True or False?"
      has_cape = gets.chomp.downcase
      print "What's their Power? "
      power = gets.chomp.downcase
      print "Name of Arch Nemesis: "
      arch_nemesis = gets.chomp

      results = db_connect.exec("INSERT INTO superheroes (superhero_name, alter_ego, has_cape, power, arch_nemisis) VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}', '#{arch_nemesis}');")

    when "v"
      puts "Which superhero would you like to see?"
      results = db_connect.exec("SELECT superhero_name FROM superheroes;")
      print results.values
      answer = gets.chomp
      answer = db_connect.exec("SELECT * FROM superheroes WHERE superhero_name = '#{answer}';")
      print answer.values

    when "u"
      puts "Which superhero would you like to revise?"
      n_results = db_connect.exec("SELECT superhero_name FROM superheroes;")
      print n_results.values   
      answer = gets.chomp

      puts "Which part of this superhero would you like to revise?"
      results = db_connect.exec("SELECT alter_ego, has_cape, power, arch_nemisis FROM superheroes WHERE superhero_name = '#{answer}';")
      print results.values
      revise_answer = gets.chomp
      
      revise = db_connect.exec("SELECT * FROM superheroes WHERE superhero_name = '#{revise_answer}';")
      print revise.values

      new_ans = gets.chomp
      puts "What is the new description?"


      revised = db_connect.exec("UPDATE superheroes SELECT")

      # print revise_answer.values
      # name_answer = db_connect("ALTER TABLE") 

    when "r"
      puts "Which superhero would you like to remove?"
      pick = db_connect.exec("SELECT superhero_name FROM superheroes;")
      print pick.values

      answer = gets.chomp
      answer = d_results = db_connect.exec("DELETE FROM superheroes WHERE superhero_name='#{answer}';")

    when "q"
      puts "Thanks for stopping by!"
  

    end
    db_connect.close
