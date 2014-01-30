require 'pg'

db_conn = PG.connect( :dbname => 'super', :host => 'localhost' )


puts <<PROMPT
What would you like to do?
(I) Index - List all Super Heros
(C) Add a Super Hero
(R) View all info for a specific Super Hero
(U) Update a Super Hero
(D) Remove a Super Hero
PROMPT

answer = gets.chomp.downcase

case answer
when "i"
  select_query = "SELECT superhero_name FROM superheroes;"
  db_conn.exec(select_query)
  results = db_conn.exec(select_query)
  puts results.each {|name| puts "Name: #{name["superhero_name"]}"}
  # puts results.values

when "c"
  puts "What is superhero's name?"
  superhero_name = gets.chomp
  puts "What is his/her alter ego?"
  alter_ego = gets.chomp 
  puts "Does he/she has a cape?"
  has_cape = gets.chomp
  puts "What is his/her special power?"
  power = gets.chomp
  puts "Who is his/her nemesis?"
  arch_nemesis = gets.chomp

  inputs = db_conn.exec("INSERT INTO superheroes(superhero_name, alter_ego, has_cape, power, arch_nemesis)
  VALUES ( '#{superhero_name}', '#{alter_ego}', '#{has_cape}', '#{power}', '#{arch_nemesis}');") 

  # db_conn.exec(insert_query)
  # inputs = db_conn.exec(insert_query)
  # puts inputs.values

when "r"
  
  puts "Whose information do you want to view?"
  results = db_conn.exec("SELECT superhero_name FROM superheroes;")
  # results.each do |row|
  #   row.each{|key, value| puts "#{key}, #{value}"} 
  # end
  puts results.each {|name| puts "Name: #{name["superhero_name"]}"}
  
  superhero = gets.chomp
  results = db_conn.exec("SELECT * FROM superheroes WHERE superhero_name = '#{superhero}';")
  puts results.values

  # db_conn.exec(view_query)
  # info = db_conn.exec(view_query)
  # puts info.values
when "u"

puts  "What would you like to change?"
puts "Please enter one: superhero_name, alter_ego, has_cape, power, arch_nemesis"


  table = db_conn.exec("SELECT * FROM superheroes;")
  # print table.values
  
  puts table.each {|name, alter| puts "Name: #{value["superhero_name"]}" ,  "Alter Ego: #{value["alter"]}"}

  # answer = gets.chomp

  # revised_answer = db_conn.exec("ALTER '#{answer}' FROM superheroes ")


end







db_conn.close






