require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "dmitryjum",
  password: "",
  database: "ga_food"
  )

class Fridge < ActiveRecord::Base
  has_many :food
  has_many :drink
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end

def list_all_fridges
  Fridge.all.each do |f|
    if f.brand != nil #doesn't work as I want, doesn't show anything if no fridges
      puts "#{f.brand} is #{f.volume}cu.ft and at #{f.location}"
    else
      puts "There are no fridges yet"
    end
  end
end

def list_all_food(fridge)
  fridge.food.all.each do |f|
    if f.vegan == true # works,but gives Deprication warning, gives an example, but don't really understand it yet
      puts "#{f.name} weighs #{f.weight}lbs and it's vegan" 
    else
      puts "#{f.name} weighs #{f.weight}lbs and it's not vegan"
    end
  end  
end



puts "Welcome to GA Fridge database \n \n"

choice = ""
while choice != "q"

  puts "Here's what you can do: 
  * (L) List all the fridges
  * (A) Add a fridge
  * (R) Delete a fridge
  * (F) View food in the fridge
  * (D) View all drinks in the fridge
  * (O) Add food to the fridge
  * (E) Eat food from the fridge
  * (C) Consume part of the drink
  * (F) Consume all of the drink
  * (Q) Exit"

  choice = gets.chomp.downcase

  case choice
  when "l"
    list_all_fridges
    puts " "
  when "a" #don't know how to create a table with Acitve Record and check if it exists, had to create with SQL!!!
    puts "Please enter the name of your new fridge"
    brand_input = gets.chomp
    puts "Please enter its location within the building"
    location_input = gets.chomp
    puts "Please enter its volume"
    volume_input = gets.chomp.to_i
    fridge = Fridge.new
    fridge.brand = brand_input
    fridge.location = location_input
    fridge.volume = volume_input
    fridge.save
    puts "\n\n"
  when "r"
    puts "please enter brand of the fridge you'd like to remove\n\n"
    list_all_fridges
    fridge_to_kill = gets.chomp
    fridge = Fridge.find_by(brand: fridge_to_kill)
    fridge.destroy
    puts "Your fridge has just been demolished"
    puts"\n\n"
  when "f"
    puts "Please choose the fridge you'd like to open"
    list_all_fridges
    brand_input = gets.chomp
    fridge = Fridge.find_by(brand: brand_input)
    list_all_food(fridge)
    #finish the refernce to the fridge list
  when "o"
    puts "Please choose the fridge you'd like to open"
    if list_all_fridges != nil #doesn't work...damn :(
      brand_input = gets.chomp
      fridge = Fridge.find_by(brand: brand_input)
      puts "What food would you like to pu in this fridge?"
      food_name = gets.chomp
      puts "How heavy is it?"
      food_weight = gets.chomp.to_i
      puts "Is it vegan? please answer (true) or (false)"
      vegan = gets.chomp
      food = fridge.food.new
      food.name = food_name
      food.weight = food_weight
      food.vegan = vegan
      food.save
      puts "\n\n"
    else
      puts "please add fridge first"
    end
  when "q"
    puts "Good bye"
  else
    puts "Please enter correct letter from the menu"
  end
end