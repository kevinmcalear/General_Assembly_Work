require "active_record"
require'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jennifer",
  :password => "",
  :database => "fridge_db"
)

class App < ActiveRecord::Base
  has_many :fridges

class Fridge < ActiveRecord::Base
  has_many :food
  has_many :drinks
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end

fridge1 = Fridge.create(fridge_name: 'Fridge 1')
fridge1.fridge_name = "Fridge 1"
fridge1.location = "Kitchen1"
fridge1.brand = "Whirlpool"
fridge1.cubic_feet = 4.4
fridge1.save

fridge2 = Fridge.create(title: 'Fridge 2')
fridge2.fridge_name = "Fridge 2"
fridge2.location = "Kitchen2"
fridge2.brand = "Samsung"
fridge2.cubic_feet = 25.5
fridge2.save

lunch1 = Food.create(food_name: "Soup")
lunch1.food_name = "Soup"
lunch1.weight = 1
lunch1.vegan = false
lunch1.fridges_id = ("Fridge 1")
lunch1.save

lunch2 = Food.create(food_name: "Salad")
lunch2.food_name = "Salad"
lunch2.weight = 1
lunch2.vegan = true
lunch1.fridges_id = ("Fridge 2")
lunch2.save

drink1 = Drink.create(drink_name: "Drink 1")
drink1.drink_name = "Mountain Dew"
drink1.ounces = 20
drink1.alcohol = false
drink1.fridges_id = ("Fridge 1")
drink1.save

drink2 = Drink.create(drink_name: "Drink 2")
drink2.drink_name = "Masottina Prosecco"
drink2.ounces = 25
drink2.alcohol = true
drink2.fridges_id = ("Fridge 2")
drink2.save


begin

puts "Welcome to the FridgeOmatic App"
puts ""
puts "What would you like to do?"
puts "(L)  List all Fridges"
puts "(A) Add a Fridge"
puts "(D) Delete a Fridge"

# puts "(VF) View all food items in a specific fridge"
puts "(AF) Add a Food item to a fridge"
puts "(E)  Eat a food item from a fridge"

# puts "(VD) View all drink items in a specific fridge"
puts "(AD) Add a drink item to a fridge"
# puts "(CD) Consume PART of a drink from a fridge"
puts "(CA) Consume ALL of a drink from a fridge"

puts "(Q) Quit"

choice = gets.chomp.upcase

case choice
when "L"
  fridges = Fridge.all
  fridges.each {|value| puts "Fridgerators in stock: #{value.title} Location: #{value.location} Brand: #{value.brand} Cubic Feet: #{value.cubic_feet}" }

when "A"  
  puts "What fridgerator would you like to add?"
  fridge_name_to_add = gets.chomp
  puts "Where is the location?"
  location = gets.chomp
  puts "What is the brand?"
  brand = gets.chomp
  puts "What is the cubic feet?"
  cubic_feet = gets.chomp

  new_item = Fridge.create(fridge_name: fridge_name_to_add)
  new_item.fridge_name = "#{fridge_name_to_add}"
  new_item.location = "#{location}"
  new_item.brand = "#{brand}"
  new_item.cubic_feet = "#{cubic_feet}"
  new_item.save

when "D"
  puts "Which fridge would you like to delete?"
  response = gets.chomp
  fridge = Fridge.find_by(fridge_name: response)
  fridge.destroy

## VIEW FOOD 

# when "VF"
#   puts "Which Fridge would you like to open?"
#   fridges = Fridge.all
#   response = gets.chomp
#   fridge
#   food.each {|value| puts "Fridgerators in stock: #{value.title} Location: #{value.location} Brand: #{value.brand} Cubic Feet: #{value.cubic_feet}" }

when "AF"  
  puts "What kind of food would you like to add?"
  food_name = gets.chomp
  puts "How much does it weigh?"
  weight = gets.chomp
  puts "Is it Vegan? Yes or no?"
  vegan = gets.chomp 
  puts "Which fridge would you like to add it to?"
  fridge = gets.chomp

   new_item = Food.create(food_name: food_name_to_add)
  new_item.food_name = "#{food_name_to_add}"
  new_item.weight = "#{weight}"
  new_item.vegan = "#{vegan}"
  new_item.date = "#{current_date}"
  new_item.date = "#{fridge}"
  new_item.save

when "E"
  puts "Which food would you like to eat?"
  response = gets.chomp
  food = Food.find_by(food_name: response)
  food.destroy

  # puts "(VD) View all drink items in a specific fridge"

when "AD"  
  puts "What kind of drink would you like to add?"
  drink_name = gets.chomp
  puts "How many ounces does it weigh?"
  ounces = gets.chomp
  puts "Does it contain alcohol? Yes or no?"
  alcohol = gets.chomp 
  puts "Which fridge would you like to add it to?"
  fridge = gets.chomp

  new_item = Drinks.create(drink_name: drink_name_to_add)
  new_item.drink_name = "#{drink_name_to_add}"
  new_item.ounces = "#{ounces}"
  new_item.alcohol = "#{alcohol}"
  new_item.fridge = "#{fridge}"
  new_item.save

  # puts "(CD) Consume PART of a drink from a fridge"

when "CA"
  puts "Which drink do you want to finish?"
  response = gets.chomp
  drink = Drink.find_by(drink_name: response)
  drink.destroy

end while choice != "Q"