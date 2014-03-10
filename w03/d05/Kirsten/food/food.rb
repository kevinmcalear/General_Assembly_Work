require "active_record"
require'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "kirsten",
  :password => "",
  :database => "food_db"
)

class Fridge < ActiveRecord::Base
  has_many:foods, dependent: :destroy
  has_many:drinks, dependent: :destroy 
end

class Food < ActiveRecord::Base
  belongs_to:Fridge
end

class Drink < ActiveRecord::Base
  belongs_to:Fridge
end

# fridge_a = Fridge.create(name: 'A')
# fridge_a.name = "A"
# fridge_a.brand = "Frigidaire"
# fridge_a.size = 20
# fridge_a.location = "41 Union Square West"
# fridge_a.save

# fridge_b = Fridge.create(name: 'B')
# fridge_b.name = "B"
# fridge_b.brand = "Frigidaire"
# fridge_b.size = 18
# fridge_b.location = "41 Union Square West"
# fridge_b.save

# fridge_c = Fridge.create(name: 'C')
# fridge_c.name = "C"
# fridge_c.brand = "Kenmore"
# fridge_c.size = 24
# fridge_c.location = "10 East 21st Street"
# fridge_c.save

# Ran the above code with this program the first time to add fridges to start with. 

begin

puts "------------------------------------"
puts "Welcome to the fridge management app"
puts "------------------------------------"
puts "1. List all the fridges"
puts "2. Delete a fridge"
puts "3. View all the food in a fridge"
puts "4. Add a food item to a fridge"
puts "5. Consume a food item from a fridge"
puts "6. View all the drinks in a fridge"
puts "7. Add a drink item to the fridge"
puts "8. Consume part of a drink from a fridge"
puts "9. Consume all of a drink from a fridge"
puts "Q. Quit"

choice = gets.chomp

case choice
when "1"
  # list the fridges
  fridges = Fridge.all
  fridges.each {|value| puts "name: #{value.name} location: #{value.location} brand: #{value.brand} size: #{value.size} cubic feet."}

when "2"
  puts "Which fridge would you like to delete?"
  to_delete = gets.chomp
  # delete fridge
  fridge = Fridge.find_by(name: to_delete)
  fridge.destroy
  puts "#{to_delete} was successfully removed."
when "3"
  puts "Which fridge would you like to view?"
  to_view = gets.chomp
  # #show fridge
  this_fridge = Fridge.find_by(name: "#{to_view}")
  this_one = this_fridge.id

  food_list = Food.where( 'fridges_id' == "#{this_one}")
  food_list.each {|x| puts x.name}

when "4"
  puts "What fridge would you like to add to?"
  fridge_to_add = gets.chomp
  puts "What is the name of the food?"
  name_food = gets.chomp
  puts "What is the weight in ounces?"
  weight_food = gets.chomp
  puts "It is vegan? true/false"
  vegan = gets.chomp
  # add food to fridge

  which_fridge = Fridge.find_by(name: fridge_to_add)
  this_fridge = which_fridge.id

  new_food = Food.create(name: name_food)
  new_food.name = name_food
  new_food.weight = weight_food
  new_food.vegan = vegan
  new_food.fridges_id = this_fridge
  new_food.save

  puts "#{name_food} was successfully added to #{fridge_to_add}."
when "5"
  puts "Which food would you like to eat?"
  food_choice = gets.chomp
  puts "Which fridge is it in?"
  fridge_choice = gets.chomp

  food = Food.find_by(name: food_choice)
  destroy.food

# consume food
  puts "#{food_choice} was consumed from #{fridge_choice}."
when "6"
  puts "Which fridge would you like to view?"
  to_view = gets.chomp
# view drinks
  this_fridge = Fridge.find_by(name: "#{to_view}")
  this_one = this_fridge.id

  drink_list = Drink.where( 'fridges_id' == "#{this_one}")
  drink_list.each {|x| puts x.name}

when "7"
  puts "Which fridge are you adding to?"
  fridge_to_add = gets.chomp
  puts "What is the name of the drink?"
  name_drink = gets.chomp
  puts "What is the size in ounces?"
  drink_size = gets.chomp
  puts "Is it alcoholic? true/false"
  alcoholic = gets.chomp

  which_fridge = Fridge.find_by(name: fridge_to_add)
  this_fridge = which_fridge.id

  new_drink = Drink.create(name: name_drink)
  new_drink.name = name_drink
  new_drink.alcoholic = alcoholic
  new_drink.fridges_id = this_fridge
  new_drink.size = drink_size
  new_drink.save

# add drink
  puts "#{name_drink} has been successfully added to #{fridge_to_add}."
when "8"
  puts "What would you like to drink?"
  drink = gets.chomp
  puts "Which fridge is it in?"
  drink_from = gets.chomp
  puts "How many ounces are you drinking?"
  ounces = gets.chomp.to_i
# update drink size

  this_fridge = Fridge.find_by(name: "#{drink_from}")
  this_one = this_fridge.id

  this_drink = Drink.where("fridges_id = ? AND name = ?", this_fridge, drink)

  start_size = this_drink[0].size
  this_drink[0].size = start_size - ounces.to_i
  this_drink[0].save

  puts "You have consumed #{ounces} ounces of #{drink} from #{drink_from}."
when "9"
  puts "What drink would you like to finish?"
  drink = gets.chomp
  puts "Which fridge is it in?"
  drink_from = gets.chomp
# consume whole drink

  drink_to_delete = Drink.find_by(name: drink)
  destroy.drink_to_delete

  puts "You have finished #{drink} from #{drink_from}."

end
end while choice.downcase != "q"



