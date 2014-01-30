require 'pg'
require 'pry'

def output(query)
    query.each do |hash|
      puts "#{hash["superhero_name"]}, #{hash["alter_ego"]}, #{hash["has_cape"]}, #{hash["power"]}, #{hash["arch_nemesis"]}"
    end
  end

c = PG.connect(:dbname => "superheroes_db")

puts "Welcome to Superhero DA BEE"

choice = nil
while (choice != "q")
  puts " (i) Index - List all Super Heros
 (c) Add a Super Hero
 (r) View all info for a specific Super Hero
 (u) Update a Super Hero
 (d) Remove a Super Hero
 (q) Quit"
  choice = gets.chomp

  case choice 
    when "i"
      query = c.exec("SELECT * FROM superheroes;")
      output(query)
    when "c"
      print "Name: "
      superhero_name = gets.chomp
      print "Alter ego: "
      alter_ego = gets.chomp
      print "Do they have a cape? (true/false): "
      has_cape = gets.chomp
      print "What's their power? "
      power = gets.chomp
      print "Who is their arch_nemesis? "
      arch_nemesis = gets.chomp
      c.exec("INSERT INTO superheroes (superhero_name,alter_ego,has_cape,power,arch_nemesis) VALUES ('#{superhero_name}','#{alter_ego}','#{has_cape}','#{power}','#{arch_nemesis}');")
    when "r"
      print "Which superhero do you want to see? "
      superhero_name = gets.chomp
      query = c.exec("SELECT * FROM superheroes WHERE superhero_name='#{superhero_name}';")
      output(query)
    when "u"
      print "What's the name of the Super Hero you want to change? "
      superhero_name  = gets.chomp
      puts "Pick an attribute of #{superhero_name}'s do you want to change?
      superhero_name
      alter_ego
      has_cape
      power
      arch_nemesis"
      attributename = gets.chomp
      print "What value should #{attributename} for #{superhero_name} have? "
      value = gets.chomp
      c.exec("UPDATE superheroes SET #{attributename} = '#{value}' WHERE superhero_name='#{superhero_name}';")
    when "d"
      print "Which Super Hero would you like to slay?"
      superhero_name = gets.chomp
      c.exec("DELETE FROM superheroes WHERE superhero_name='#{superhero_name}';")
  end
end

c.close

# ('Superman','Clark Kent','true','strength','Lex Luthor'),
# ('Wonder Woman','Diana Prince','false','strength','Cheetah'),
# ('Batman','Bruce Wayne','true','intelligence','Joker'),
# ('Mr Incredible','Robert Parr','false','strength','Syndrome'),
# ('Professor X','Charles Xavier','false','psychic','Magneto'),
# ('Spiderman','Peter Parker','false','wall climbing','Doctor Octopus'),
# ('Captain America','Steve Rogers','false','super soldier','Red Skull'),
# ('Iron Man','Tony Stark','false','iron suit','Mandarin'),
# ('Wolverine','Logan','false','healing','Sabretooth')

# f = File.new("superheroes.csv","r")
# f.each do |line|
#   array = line.split(",")
#   array
#   binding.pry
#   c.exec("INSERT INTO superheroes (superhero_name,alter_ego,has_cape,power,arch_nemesis) VALUES (superhero_name,alter_ego,has_cape,power,arch_nemesis);")
# end
# c.exec("INSERT INTO superheroes (superhero_name,alter_ego,has_cape,power,arch_nemesis) VALUES (#{superhero_name,alter_ego,has_cape,power,arch_nemesis})")