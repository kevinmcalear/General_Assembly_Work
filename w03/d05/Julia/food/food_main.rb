require_relative "food.rb"
require "pry"

puts "******************"
puts "MANAGE YOUR FRIDGE"
puts "******************"

def menu
  puts ""
  puts ""
  puts "***FRIDGE MENU***"

  puts "(A) – Add a Fridge"
  puts "(D) – Delete a Fridge"
  puts "(V) – View Fridge Contents"
  puts "(AI) – Add an Item to the Fridge"
  puts "(E) – Eat a Food from the Fridge"
  puts "(VD) – View all Drinks in a Specific Fridge"
  puts "(AD) – Add a Drink to a Fridge"
  puts "(DR) – Drink Some of a Drink"
  puts "(DD) – Delete Drink"
  puts "(Q) – Quit"
end

puts menu
puts "What would you like to do?"
choice = gets.chomp.upcase

#not sure why this method didn't work in the menu
# def next_choice
#   puts ""
#   puts "What would you like to do next?"
#   puts menu
#   choice = gets.chomp.upcase
# end

#view fridge ID and location
def view_fridges
  Fridge.all.each do |fridge|
    puts "#{fridge.id}: #{fridge.location}"
  end
end

while choice != "Q"
case choice
  #A add a fridge
  when "A"
    puts "What is the location of the fridge?"
    location = gets.chomp
    puts "What is the brand of the fridge?"
    fridge_brand = gets.chomp
    puts "What is the size of the fridge?"
    size = gets.chomp

    new_fridge = Fridge.create(location: location, fridge_brand: fridge_brand, size: size)
  
    puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase

  # "(D) – Delete a Fridge"
  when "D"
    puts "What is the number of the fridge you'd like to delete?"
    view_fridges

    fridge_to_delete = gets.chomp.to_i
    Fridge.find_by_id(fridge_to_delete).destroy

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase

  # "(V) – View Fridge Contents"
  when "V"
    puts "Which fridge number would you like the contents of?"
    view_fridges
    fridge_id = gets.chomp.to_i

    food_contents = Fridge.find_by(id: fridge_id).foods
    food_contents.each do |food|
      puts"\n**Foods**"
      puts "#{food.food_name}"
    end

    drink_contents = Fridge.find_by(id: fridge_id).drinks
    drink_contents.each do |drink|
      puts "\n**Drinks**" 
      puts "#{drink.drink_name}"
    end

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase


  # # "(AI) – Add a Food Item to the Fridge"
  when "AI"
    puts "Which fridge number would you like to add food to?"
    view_fridges
    fridge_choice = gets.chomp.to_i

    puts "What is the food's name?"
    food_name = gets.chomp
    puts "What is the food's weight?"
    weight = gets.chomp.to_i
    puts "Is the food vegan? (Y/N)"
    vegan = gets.chomp.upcase
    if vegan == "Y"
      vegan == true
    else
      vegan == false
    end
    new_food = Food.create(food_name: food_name, weight: weight, vegan: vegan, fridge_id: fridge_choice)

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase

  # "(E) – Eat a Food from the Fridge"
  when "E"
    puts "Which fridge number would you like to eat from?"
    view_fridges
    fridge_id = gets.chomp.to_i

    puts "Which number food would you like to eat?"

    food_contents = Fridge.find_by(id: fridge_id).foods
    food_contents.each do |food|
      puts "#{food.id}: #{food.food_name}"
    end

    food_to_delete = gets.chomp.to_i

    Food.find_by_id(food_to_delete).destroy

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase

  # # "(VD) – View all Drinks in a Specific Fridge"
  when "VD"
    puts "Which fridge number would you like to view the drinks of?"
    view_fridges
    fridge_id = gets.chomp.to_i
    
    drink_contents = Fridge.find_by(id: fridge_id).drinks
      drink_contents.each do |drink|
        puts "\n**Drinks**" 
        puts "#{drink.drink_name}"
    end

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase
  # # "(AD) – Add a Drink to a Fridge"
  when "AD"
    puts "Which fridge would you like to add a drink to?"
    view_fridges
    fridge_id = gets.chomp.to_i

    puts "What is the name of the drink?"
    drink_name = gets.chomp
    puts "Is the drink alcoholic? (Y/N)"
    alcoholic = gets.chomp
    if alcoholic == "Y"
      alcoholic = true
    else
      alcoholic = false
    end
    puts "How many ounces is the drink?"
    drink_size = gets.chomp.to_i

    new_drink = Drink.create(drink_name: drink_name, alcoholic: alcoholic, drink_size: drink_size, fridge_id: fridge_id)

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase
  # # "(DR) – Drink Some of a Drink"
  when "DR"
    puts "Which fridge would you like to drink a drink from?"
    view_fridges
    fridge_id = gets.chomp.to_i

    puts "Which drink number would you like to drink?"

    drink_contents = Fridge.find_by(id: fridge_id).drinks
      drink_contents.each do |drink| 
        puts "\n **Drinks**"
        puts "#{drink.id}: #{drink.drink_name} – #{drink.drink_size} ounces"
      end

    drink_choice = gets.chomp.to_i
    selected_drink = Drink.find_by_id(drink_choice)

    puts "How many ounces of the drink would you like to drink?"
    ounces_to_drink = gets.chomp.to_i
    original_drink_size = selected_drink.drink_size
    new_size = (original_drink_size - ounces_to_drink)

    selected_drink.update(drink_size: new_size)

    puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase

    # end
  # # "(DD) – Delete Drink"
  when "DD"
    puts "Which fridge would you like to drink a drink from?"
    view_fridges
    fridge_id = gets.chomp.to_i

    puts "Which drink number would you like to delete?"

    drink_contents = Fridge.find_by(id: fridge_id).drinks
      drink_contents.each do |drink| 
        puts "\n **Drinks**"
        puts "#{drink.id}: #{drink.drink_name}"
      end
    drink_choice = gets.chomp.to_i

    drink_to_delete = Drink.find_by(id: drink_choice).destroy

     puts ""
    puts "What would you like to do next?"
    puts menu
    choice = gets.chomp.upcase
  else 
    puts "Please enter a valid option!"
    puts ""
    puts menu
    choice = gets.chomp.upcase
  end
end

puts "Goodbye!"