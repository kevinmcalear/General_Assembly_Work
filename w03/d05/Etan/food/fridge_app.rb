require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "newuser",
  :password => "",
  :database => "the_kitchen"
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

puts "ICE TO MEET YOU. WELCOME TO THE FRIDGE..."
puts ""

begin
  puts " "
  puts "What would you like to do?"

  puts " (I) Index - List all fridges"
  puts " (C) Add a fridge"
  puts " (P) Remove a fridge"
  puts " (R) View all food for a specific fridge"
  puts " (K) View all drink for a specific fridge"
  puts " (A) Add a food item to a fridge"
  puts " (E) Eat a food item from a fridge (deleted!)"
  puts " (V) Add a drink item to a fridge"
  puts " (U) Drink part of a drink"
  puts " (D) Drink an entire drink (deleted!)"
  puts " (Q) Quit Program"

  input = gets.chomp.downcase

  if input == "i"
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}

  elsif input == "c"

    puts "What's the brand name of the fridge?"
    name = gets.chomp
    puts "What's the location of the #{name} fridge?"
    location = gets.chomp
    puts "Does the #{name} fridge have food in it?"
    has_food = gets.chomp
    puts "Does the #{name} fridge have any drinks in it?"
    has_drink = gets.chomp

    Fridge.create(brand: "#{name}", location: "#{location}", has_food: has_food, has_drink:has_drink)

  elsif input == "p"
    puts "Which fridge would you like to delete?"
    Fridge.all.each { |x| puts x.brand}
    choice = gets.chomp
    fridge_to_delete = Fridge.find_by(brand: "#{choice}")
    fridge_to_delete.destroy

  elsif input == "r" 
    puts "Which fridge's food do you want to see?"
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}
    choice = gets.chomp

    fridge = Fridge.find_by_id(choice)
    fridge.foods.each {|food| puts "#{food.name} weighs #{food.weight} pounds and was entered into the fridge on: #{food.date_entered}. But is it vegan? #{food.is_vegan}" }

  elsif input == "k" 
    puts "Which fridge's drink do you want to see?"
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}
    choice = gets.chomp

    fridge = Fridge.find_by_id(choice)

    fridge.drinks.each {|drink| puts "#{drink.name} has #{drink.can_size_oz} ounces of liquid. But is it alocholic? #{drink.is_alcoholic}" }

  elsif input == "a"

    puts "What's the name of the food?"
    name = gets.chomp
    puts "What's the weight, in lbs, of the #{name}?"
    weight = gets.chomp
    puts "Is the #{name} vegan (true/false)?"
    vegan = gets.chomp
    puts "Which fridge does #{name} belong to? Choose an ID."
    Fridge.all.each { |x| puts x.brand + " fridge id = ", x.id}
    fridge_choice = gets.chomp

    Food.create(name: "#{name}", weight: "#{weight}", is_vegan: vegan, date_entered: Time.now,
    fridge_id: fridge_choice)

  elsif input == "e"
    puts "Which fridge's food would you like to eat? Input an ID."
    
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}
    choice = gets.chomp

    fridge = Fridge.find_by_id(choice)
    fridge.foods.each {|food| puts "#{food.name} weighs #{food.weight} pounds and was entered into the fridge on: #{food.date_entered}. But is it vegan? #{food.is_vegan}" }

    puts "Which food would you like to eat? Input a name."
    food_choice = gets.chomp


    food_to_delete = Food.find_by(name: "#{food_choice}")
    food_to_delete.destroy

 
  elsif input == "v"

    puts "What's the name of the drink?"
    name = gets.chomp
    puts "How many ounces of liquid does #{name} have?"
    ounces = gets.chomp
    puts "Is the #{name} alcoholic (true/false)?"
    alcoholic = gets.chomp
    puts "Which fridge does #{name} belong to? Choose an ID."
    Fridge.all.each { |x| puts x.brand + " fridge id = ", x.id}
    fridge_choice = gets.chomp

    Drink.create(name: "#{name}", can_size_oz: "#{ounces}", is_alcoholic: alcoholic, fridge_id: fridge_choice)


  elsif input == "u"
    puts "Which fridge's drink would you like to drink ONLY some of? Input an ID."
    
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}
    choice = gets.chomp

    fridge = Fridge.find_by_id(choice)
    fridge.drinks.each {|drink| puts "#{drink.name} has #{drink.can_size_oz} ounces of liquid. But is it alocholic? #{drink.is_alcoholic}" }

    puts "Which drink would you like to consume ONLY some of? Input a name."
    drink_choice = gets.chomp


    drink_to_drink = Drink.find_by(name: "#{drink_choice}")

    puts "How many ounces would you like to drink?"
    drank = gets.chomp.to_i

    drink_to_drink.update(can_size_oz: drink_to_drink.can_size_oz - drank)

  elsif input == "d"
    puts "Which fridge's drink would you like to drink? Input an ID."
    
    Fridge.all.each { |x| print x.brand + "fridge id = ", x.id}
    choice = gets.chomp

    fridge = Fridge.find_by_id(choice)
    fridge.drinks.each {|drink| puts "#{drink.name} has #{drink.can_size_oz} ounces of liquid. But is it alocholic? #{drink.is_alcoholic}" }

    puts "Which drink would you like to consume? Input a name."
    drink_choice = gets.chomp


    drink_to_delete = Drink.find_by(name: "#{drink_choice}")
    drink_to_delete.destroy

  else input != "q"
    "You messed up, please choose another option. Idiot."
  end

end while input != "q"
