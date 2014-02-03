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
  puts " (9) Consume all of a drink"
  puts " (10) Quit"
  puts ""
  puts "------------------------------------"

  print "Enter a menu option: "
  choice = gets.chomp.to_i
  puts `clear`

  if choice == 1
    puts "---------------------------"
    puts "      List of Fridges"
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "---------------------------"

  elsif choice == 2

    puts "Enter a location for a new fridge: "
    location = gets.chomp
    puts "Enter the brand of fridge: "
    brand = gets.chomp
    puts "Enter the size of the fridge: "
    cubic_feet = gets.chomp.to_i

    creation = Fridge.create(location: location, brand: brand, cubic_feet: cubic_feet)

    puts "Fridge Created!"

  elsif choice == 3
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}

    puts "Choose the number of a fridge to look inside: "
    response = gets.chomp.to_i
    fridge = Fridge.find_by_id(response)

    selection = Food.where(fridge_id: response)
    puts "-----------------------------"
    puts "  List of Food in #{fridge.location} Fridge"
    selection.each {|food| puts food.name }
    puts "-----------------------------"


  elsif choice == 4
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "Enter the number of the fridge to add food to: "
    fridge_choice = gets.chomp.to_i

    puts "Enter the name of the food to add: "
    name = gets.chomp
    puts "Enter the weight of the food in pounds: "
    weight = gets.chomp.to_i
    puts "Is the food vegan? (y or n): "
    vegan = gets.chomp
    if vegan == "y"
     veg = true
    else
    veg = false
    end

  creation = Food.create(name: name, weight: weight, vegan: veg, fridge_id: fridge_choice)
  puts "Food has been added!"

  elsif choice == 5
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "Enter the fridge you'd like to eat from: "
    fridge_choice = gets.chomp.to_i

    selection = Food.where(fridge_id: fridge_choice)
    selection.each {|food| puts food.name}

    puts "What would you like to eat? "
    eat = gets.chomp
    consume = Food.find_by(name: eat)
    consume.destroy

    puts "Food has been eaten."

  elsif choice == 6
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}

    puts "Choose the number of a fridge to look inside: "
    response = gets.chomp.to_i

    fridge = Fridge.find_by_id(response)

    selection = Drink.where(fridge_id: response)
    puts "-----------------------------"
    puts "  List of Drinks in #{fridge.location} Fridge"
    selection.each {|drink| puts drink.name }
    puts "-----------------------------"

  elsif choice == 7
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "Enter the number of the fridge to add a drink to: "
    fridge_choice = gets.chomp.to_i

    puts "Enter the name of the drink to add: "
    name = gets.chomp
    puts "Enter the size of the drink: "
    size = gets.chomp.to_i
    puts "Is this an alcoholic drink? (y or n): "
    alchy = gets.chomp
    if alchy == "y"
      booze = true
    else
      booze = false
    end

    creation = Drink.create(name: name, size: size, alcoholic: booze, fridge_id: fridge_choice)
    puts "Drink has been added!"

  elsif choice == 8
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "Enter the fridge you'd like to drink from: "
    response = gets.chomp.to_i
    fridge = Fridge.find_by_id(response)

    selection = Drink.where(fridge_id: response)
    puts "-----------------------------"
    puts "  List of Drinks in #{fridge.location} Fridge"
    selection.each {|drink| puts drink.name }
    puts "-----------------------------"

    puts "What would you like to drink? "
    beverage = gets.chomp
    consume = Drink.find_by(name: beverage)
    puts consume.size
    puts "Enter an amount to drink: "
    amount = gets.chomp.to_i
    subtract_liquid = (consume.size - amount)
    if subtract_liquid <= 0
      consume.destroy
      puts "You drank all of it!"
    else
    consume.update(size: subtract_liquid)
    puts "You drank #{amount} from #{consume.name}"
    end


  elsif choice == 9
    Fridge.all.each {|fridge| puts "#{fridge.id}. #{fridge.location}"}
    puts "Enter the fridge you'd like to drink from: "
    fridge_choice = gets.chomp.to_i

    selection = Drink.where(fridge_id: fridge_choice)
    selection.each {|drink| puts drink.name}

    puts "What would you like to drink? "
    beverage = gets.chomp
    consume = Drink.find_by(name: beverage)
    consume.destroy

    puts "Drink is gone!"

end

end






