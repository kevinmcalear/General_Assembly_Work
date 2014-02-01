require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
:adapter => "postgresql",
:host => "localhost",
:username => "stevenweiss",
:password => "",
:database => "kitchen_db"
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

def input_for_fridge
  user_input = {}

  print "Fridge Location: "
  user_input[:location] = gets.chomp
  print "Fridge Brand: "
  user_input[:brand] = gets.chomp
  print "Size(in #): "
  user_input[:size] = gets.chomp

  return user_input
end

def input_for_food
  user_input = {}

  print "Food Name: "
  user_input[:name] = gets.chomp
  print "Food Weigt(lbs): "
  user_input[:weight] = gets.chomp
  print "Vegan?(true or false)"
  user_input[:vegan] = gets.chomp
  # print "Time put in?"
  # user_input[:time_put_in] = gets.chomp

  list_fridges

  puts "Which fridge would you like to add food to?"
  user_input[:fridge_id] = gets.chomp

  return user_input
end

def input_for_drink
  user_input = {}

  print "Drink Name: "
  user_input[:name] = gets.chomp
  print "Drink Size(oz): "
  user_input[:size] = gets.chomp
  print "Alcoholic?(true or false)"
  user_input[:alcoholic] = gets.chomp
    if true 
      puts "Wooooo!"
    else
      puts "Way to be responsible!"
    end

  list_fridges

  puts "Which fridge would you like to add food to?"
  user_input[:fridge_id] = gets.chomp

  return user_input
end

def list_fridges
  Fridge.all.each do |fridge|
    puts "#{fridge.id} || #{fridge.location}"
  end
end


# * 1List all Fridges X
# * 2Add a Fridge X
# * 3Delete a Fridge X
# * 4View all food items in a specific fridge
# * 5Add a food item to a fridge X
# * 6Eat a food item from a fridge (delete it)
# * 7View all drink items in a specific fridge
# * 8Add a drink item to a fridge X
# * 9Consume PART of a drink from a fridge (update its size in ounces)
# * 10Consume ALL of a drink from a fridge (delete it)

choice = ""
while choice != 11

puts "Choose Your Fridge Option Wisely:"
puts "1- list all friges"
puts "2- Add a fridge"
puts "3- Delete A Fridge"
puts "4- View all Foods in a Fridge"
puts "5- Add a Food Item To A Fridge"
puts "6- Eat a food item from a Fridge"
puts "7- View all Drinks in a Fridge"
puts "8- Add a Drink to a Fridge"
puts "9- Consume part of a drink"
puts "10-Consume all of a drink"
puts "11 - Quit"

choice = gets.chomp.to_i

case choice

when 1
  Fridge.all.sort_by(&:id).each do |fridge|
    puts "#{fridge.location} || #{fridge.brand} || #{fridge.size} "
  end

when 2
  Fridge.create(input_for_fridge())

when 3
  list_fridges

  puts "Which Number Fridge Would You Like To Delete?"
  num_choice = gets.chomp.to_i

  Fridge.find_by_id(num_choice).destroy

when 4
list_fridges

puts "Which fridge would you like to view food items in?"
fridge_choice = gets.chomp.to_i

foods = Food.where(fridge_id: fridge_choice)
#find_by_fridge_id only returns one thing!!!

foods.each do |food|
  puts "#{food.name} || #{food.weight} || Vegan? #{food.vegan}"
end


when 5
  Food.create(input_for_food())
when 6
  

when 7
list_fridges

puts "Which fridge would you like to view drinks in?"
fridge_choice = gets.chomp.to_i

drinks = Drink.where(fridge_id: fridge_choice)
#find_by_fridge_id only returns one thing!!!

drinks.each do |drink|
  puts "#{drink.name} || #{drink.size} || Alcoholic? #{drink.alcoholic}"
end

when 8
  Drink.create(input_for_drink())
when 9

when 10

end


response = gets.chomp.to_i


end


