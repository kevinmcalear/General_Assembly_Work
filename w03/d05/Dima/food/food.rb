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
  has_many :foods
  has_many :drinks
  #self.has_many(Foods{:dependent => :destroy})
  #self.has_many(Drinks{:dependent => :destroy})
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end

def select_fridge
  list_all_fridges
  brand_input = gets.chomp
  fridge = Fridge.find_by(brand: brand_input)
  return fridge #!!!!!!! returns string, not an object
end

def menu
  choice = ""
  while choice != "q"
  puts "Here's what you can do: 
  * (L) List all the fridges
  * (A) Add a fridge
  * (R) Delete a fridge
  * (F) View food in the fridge
  * (O) Add food to the fridge
  * (D) View all drinks in the fridge
  * (X) Add drink to a fridge
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
    select_fridge
    food_from_fridge = Food.all.where(fridge_id: fridge.id)
    food_from_fridge.destroy_all
    fridge.destroy
    puts "Your fridge has just been demolished and food in it"
    puts"\n\n"
  when "f"
    puts "Please enter brand of the fridge you'd like to open\n\n"
    list_all_food(select_fridge)
    puts "Would you like to eat anything?"
    answer = gets.chomp
    if answer == "yes"
      puts "What would you like to eat?"
      food_choice = gets.chomp
      food_found = Food.find_by(name: food_choice)
      food_found.destroy
      puts "You've just eaten #{food_found.name}"
    elsif answer == "no"
    else
      puts "Please answer yes or no"
    end
  when "d"
    puts "Please enter brand of the fridge you'd like to open\n\n"
    list_all_drinks(select_fridge)
    puts "Would you like to drink anything?"
    answer = gets.chomp
    if answer == "yes"
      puts "What would you like to drink?"
      drink_choice = gets.chomp
      drink_found = Drink.find_by(name: drink_choice)
      puts "how much would you like to drink?"
      amount = gets.chomp
    elsif answer == "no"
    else
      puts "Please answer yes or no"
    end
  when "o"
    puts "Please enter brand of the fridge you'd like to open\n\n"
    select_fridge
    puts "What food would you like to put in this fridge?"
    food_name = gets.chomp
    puts "How heavy is it?"
    food_weight = gets.chomp.to_i
    puts "Is it vegan? please answer (true) or (false)"
    vegan = gets.chomp
    binding.pry
    food = fridge.create_food(name: food_name, weight: food_weight, vegan: vegan,
      fridge_id: fridge.id) ### doesn't work, because fridge == nil, because it has string not, object
    puts "\n\n"
    when "x"
    puts "Please enter brand of the fridge you'd like to open\n\n"
    select_fridge
    puts "What drink would you like to put in here?"
    drink_name = gets.chomp
    puts "What is the size of your drink?"
    drink_size = gets.chomp
    puts "Is it alcoholic or not? Please enter true/false"
    alcoholic = gets.chomp
    drink = fridge.drink.new
    drink.name = drink_name
    drink.size = drink_size
    drink.alcoholic = alcoholic
    drink.save 
    when "q"
      puts "Good bye"
      return choice
    else
      puts "Please enter correct letter from the menu"
    end
  end
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
  vegan_food = fridge.foods.where(vegan: true).to_a
  not_vegan_food = fridge.foods.where(vegan: false).to_a
  if vegan_food.length != 0 && not_vegan_food.length != 0
    if vegan_food.length != 0
      vegan_food.each {|f| puts "#{f.name} weighs #{f.weight.to_i}lbs and it's vegan"}
    end
    if not_vegan_food.length != 0
      not_vegan_food.each {|f| puts "#{f.name} weighs #{f.weight.to_i}lbs and it's not vegan"}
    end
  else
    puts "There is no food in the fridge, please add some"
    menu
  end
end

def list_all_drinks(fridge)
  alco_drink = fridge.drinks.where(alcoholic: true).to_a
  not_alco_drink = fridge.drinks.where(alcoholic: false).to_a
  if alco_drink.length != 0 && not_alco_drink.length != 0
    if alco_drink.length != 0
      alco_drink.each {|d| puts "#{d.name} is #{d.size} ounces and it's acloholic"}
    end
    if not_alco_drink.length != 0
      not_alco_drink.each {|d| puts "#{d.name} is #{d.size} ounces and not alcoholic"}
    end
  else
    puts "There are no drinks in the fridge, please add some"
    menu
  end
end

puts "Welcome to GA Fridge database \n \n"

  menu  
