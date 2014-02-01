require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "nicholasbundy",
  :password => "",
  :database => "kitchen"
  )

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end
puts `clear`
choice = 0 
while choice != 10

  puts "---------------------------------"
  puts "        FRIDGES MENU"
  puts ""
  puts " (1) List all fridges"
  puts " (2) Add a new fridge"
  puts " (3) View the food in a fridge"
  puts " (4) Add food to a fridge"
  puts " (5) Eat food from a fridge"
  puts " (6) View all the drinks in a fridge"
  puts " (7) Add drinks to a fridge"
  puts " (8) Consume part of a drink"
  puts " (9) Consume all fo a drink"
  puts " (10) Quit"
  puts ""
  puts "------------------------------------"

  print "Enter a menu option: "
  choice = gets.chomp.to_i

  if choice == 1
    Fridge.all.each {|fridge| puts fridge.location}

  elsif choice == 2

    puts "Enter a location for a new fridge: "
    location = gets.chomp
    puts "Enter the brand of fridge: "
    brand = gets.chomp
    puts "Enter the size of the fridge: "
    cubic_feet = gets.chomp.to_i

    creation = Fridge.create(location: location, brand: brand, cubic_feet: cubic_feet)



  elsif choice == 3
    Fridge.all.each {|fridge| puts fridge.location}

    puts "Choose a fridge to look inside: "
    response = gets.chomp

    response.food.all.each {|food| puts food.name }


  elsif choice == 4
    Fridge.all.each {|fridge| puts fridge.location}
    puts "Enter the fridge to add food to: "
    fridge_choice = gets.chomp

    puts "Enter the name of the food to add: "
    name = gets.chomp
    puts "Enter the weight of the food in pounds: "
    weight = gets.chomp.to_i
    puts "Is the food vegan? (y or n): "
    vegan = gets.chomp
    if vegan = y
     veg = true
   else
    veg = false
  end
  fridge_num = Fridge.find_by(fridge_choice)
  creation = Food.create(name: name, weight: weight, vegan: veg, fridge_id: fridges(fridge_num))

end

end






