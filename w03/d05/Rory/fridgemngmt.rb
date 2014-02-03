
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rorybudnick",
  :password => "",
  :database => "fridge_db"
  )

#psql work to set up db and tables
#CREATE DATABASE fridge_db

#CREATE TABLE fridges (id serial PRIMARY KEY, location
#varchar(100) NOT NULL, brand varchar(100) NOT NULL, size integer DEFAULT 1, contains_food bool NOT NULL, contains_drinks bool NOT NULL);

#CREATE TABLE foods (id serial PRIMARY KEY, name varchar(100) NOT NULL, weight integer DEFAULT 1, vegan bool NOT NULL, time timestamp NOT NULL, fridges_id integer references fridges(id));

#CREATE TABLE drinks (id serial PRIMARY KEY, name varchar(100) NOT NULL, size integer DEFAULT 1, alcoholic bool NOT NULL, fridges_id integer references fridges(id));

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks
end

class Food < ActiveRecord::Base
   belongs_to :fridges
end

class Drink < ActiveRecord::Base
   belongs_to :fridges
end

#Fridge.create(location: "Kitchen", brand: "Whirlpool", size: 32, contains_food: true, contains_drinks: true)
#Food.create(name: "steak", weight: 2, vegan: false, time: "2014-02-02 12:00:00 UTC", fridges_id: 5  )


def input_for_fridge
  user_input = {}

  print "Location: "
  user_input[:location] = gets.chomp
  print "Brand: "
  user_input[:brand] = gets.chomp
  print "Size: "
  user_input[:size] = gets.chomp
  print "Contains food?: "
  user_input[:contains_food] = gets.chomp
  print "Contains drinks?: "
  user_input[:contains_drinks] = gets.chomp

  return user_input
end

def input_for_food
  user_input = {}

  print "Fridge location?"
    fridge_location = gets.chomp
    fridge_result = Fridge.find_by(location: fridge_location)
    fridges_id = fridge_result.id
    user_input[:fridges_id] = fridges_id
  print "Name: "
  user_input[:name] = gets.chomp
  print "Weight: "
  user_input[:weight] = gets.chomp
  print "Vegan: "
  user_input[:vegan] = gets.chomp
  print "Time: "
  user_input[:time] = gets.chomp


  return user_input
end



#get_user_input([:location, :brand, :size, :contains_food, :contains_drinks])

##Set up menu
system "clear"
puts "Welcome to the Fridge Management System"

def menu
  puts ""
  puts "Enter a selection: "
  puts "(1) List all Fridges"
  puts "(2) Add a Fridge"
  puts "(3) Delete a Fridge"
  puts "(4) View all food items in a specific fridge"
  puts "(5) Add a food item to a fridge"
  puts "(6) Eat a food item from a fridge (delete it)"
  puts "(7) View all drink items in a specific fridge"
  puts "(8) Add a drink item to a fridge"
  puts "(9) Consume PART of a drink from a fridge (update its size in ounces)"
  puts "(10) Consume ALL of a drink from a fridge (delete it)"
  puts "(Q) Quit"
end

menu
choice = gets.chomp.downcase

while choice !="q"
  case choice
    when "1"
      results = Fridge.all
      results.each { |row| puts "location: #{row["location"]}, brand: #{row["brand"]}, size: #{row["size"]}, contains food: #{row["contains_food"]}, contains drinks: #{row["contains_drinks"]}" }
      menu
      choice = gets.chomp.downcase
    when "2"
      Fridge.create(input_for_fridge())
      menu
      choice = gets.chomp.downcase
    when "3"
      puts "Where is the fridge you want to delete located?"
      spot = gets.chomp
      deleted_fridge = Fridge.find_by(location: spot)
      deleted_fridge.destroy
      menu
      choice = gets.chomp.downcase
    when "4"
      puts "Where is the fridge you want to look in?"
      fridge_location = gets.chomp
      id_of_fridge = Fridge.all.find_by(location: fridge_location)
      food_result = Food.all.find_by(fridges_id: id_of_fridge.id)
      puts "name: #{food_result.name}, weight: #{food_result.weight}, vegan: #{food_result.vegan}, time: #{food_result.time}"
      menu
      choice = gets.chomp.downcase
    when "5"
      Food.create(input_for_food())
      #puts "Where is the fridge you want to add this to?"
      #fridge_location = gets.chomp
      #fridge_result = Fridge.find_by(location: fridge_location)
      #fridges_id = fridge_result.id
      #puts "What is the name of the food you want to add?"
      #food_name = gets.chomp
      #puts "What is the weight of the food you want to add?"
      #food_weight = gets.chomp
      #puts "True or false, is the food vegan?"
      #food_vegan = gets.chomp.downcase
      #puts "When are you adding it?  (Date format: 2014-02-03 10:00:00 UTC)"
      #food_time = gets.chomp
      #Food.create(name: food_name, weight: food_weight, vegan: food_vegan, time: food_time, #fridges_id: id_of_fridge)
      menu
      choice = gets.chomp.downcase
    when "6"
      puts "What is the name of the food you want to eat?"
      name_of_food = gets.chomp
      deleted_food = Food.find_by(name: name_of_food)
      deleted_food.destroy
      menu
      choice = gets.chomp.downcase
    when "7"
      


  end
end
