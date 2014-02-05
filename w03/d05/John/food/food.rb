require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "johnhinrichs",
  :password => "",
  :database => "fridge_mgmt_db"
  )

class Fridge < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :drinks, dependent: :destroy
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end


def list_items(item_list)
  item_list.each do |item|
    item_list[0].class.attribute_names.each do |attribute|
      puts "#{attribute.capitalize}: #{item[attribute]}"
    end
    puts
  end
end

def list_fridge_ids
  Fridge.all.each {|fridge| puts "ID: #{fridge.id} #{fridge.location}"}
end

def get_fridge_id
  puts "Please select a fridge id:"
  list_fridge_ids
  return gets.chomp
end


def add_fridge
  user_input = {}

  puts "Please enter the fridge's info:"
  
  print "Location: "
  user_input[:location] = gets.chomp
  
  print "Brand: "
  user_input[:brand] = gets.chomp
  
  print "Size in cubic feet: "
  user_input[:size] = gets.chomp

  Fridge.create(user_input)
end

def add_food
  food_input = {}
  
  print "Enter food name: "
  food_input[:name] = gets.chomp

  print "Enter the weight in lbs: "
  food_input[:weight] = gets.chomp

  print "Is this food vegan? "
  food_input[:vegan] = gets.chomp

  food_input[:fridge_id] = get_fridge_id

  Food.create(food_input)
end

def add_drink
  drink_input = {}
  
  print "Enter drink name: "
  drink_input[:name] = gets.chomp

  print "Enter the size in ounces: "
  drink_input[:size] = gets.chomp

  print "Is this drink alcoholic? "
  drink_input[:alcoholic] = gets.chomp

  drink_input[:fridge_id] = get_fridge_id

  Drink.create(drink_input)
end

def remove_fridge
  id = get_fridge_id
  Fridge.find(id).destroy
  puts "Fridge ID #{id} deleted."
end

def remove_food
  list_items(Food.all)
  print "Please enter the Id of the food you want: "
  id = gets.chomp
  Food.find(id).destroy
end

def remove_drink
  list_items(Drink.all)
  print "Please enter the Id of the drink you want: "
  id = gets.chomp
  Drink.find(id).destroy
end

def menu
  puts "Please select an option:"
  puts "1) List all Fridges"
  puts "2) Add a Fridge"
  puts "3) Remove a Fridge"
  puts "4) List all food items in a fridge"
  puts "5) Add a food item"
  puts "6) Remove a food item"
  puts "7) List all drink items in a fridge"
  puts "8) Add a drink item"
  puts "9) Remove a drink"
  puts "10) Quit"
  choice = gets.chomp.to_i

  case choice
    when 1
      list_items(Fridge.all)
    when 2
      add_fridge
    when 3
      remove_fridge
    when 4
      fridge_id = get_fridge_id
      list_items(Fridge.find(fridge_id).foods)
    when 5
      add_food
    when 6
      remove_food
    when 7
      fridge_id = get_fridge_id
      list_items(Fridge.find(fridge_id).drinks)
    when 8
      add_drink
    when 9
      remove_drink
  end

  puts
  return choice
end


puts "Welcome to the Fridge Management App!"
puts

while menu != 10
end