require "active_record"



ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "taidaadaya",
  :password => "",
  :database => "fridge_db"
  )

class Fridge < ActiveRecord::Base
end

class Food < ActiveRecord::Base
end

class Drink < ActiveRecord::Base
end

system "clear"

puts "==========================="
puts "Fridge App"
puts "==========================="

puts


begin 


  puts ""
  puts "1 - List all Fridges"
  puts "2 - Delete a Fridge"
  puts "3 - View all items in a fridge"
  puts "4 - Add a food to a fridge"
  puts "5 - Eat a food item from the fridge"
  puts "6 - View all drink items in a specific fridge"
  puts "7 - Add a drink to a fridge"
  puts "8 - Drink a drink"
  puts "9 - Quit"
  print ">> "

  choice = gets.chomp.to_i


  if choice == 1
    Fridge.all.each {|fridge|
      puts fridge.location
    }
  elsif choice == 2
    puts "Which fridge would you like to delete?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    fridge.destroy
  elsif choice == 3
    puts "Which fridge would you like to view food?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    foods = Food.where(fridge_id: fridge.id) 
    foods.each {|food| 
      puts food.name
    }
  elsif choice == 4
    puts "What fridge would you like to add to?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    puts "Enter name: "
    food_name = gets.chomp
    puts "Enter weight: "
    weight = gets.chomp
    puts "Vegan (T/F)? "
    vegan = gets.chomp
    Food.create(name: food_name, weight: weight, vegan: vegan, fridge_id: fridge.id)
  elsif choice == 5
    puts "What would you like to eat?"
    name = gets.chomp
    Food.find_by(name: name).destroy
  elsif choice == 6 
    puts "Which fridge would you like to view drinks?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    drinks = Drink.where(fridge_id: fridge.id)
    drinks.each {|drink|
      puts drink.name
    }
  elsif choice == 7 
     puts "What fridge would you like to add drink to?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    puts "Enter name: "
    drink_name = gets.chomp
    puts "Enter ounces: "
    size = gets.chomp
    puts "Alcoholic(T/F)? "
    alcohol = gets.chomp
    Drink.create(name: drink_name, size: size, alcoholic: alcohol, fridge_id: fridge.id)
  elsif choice == 8
    puts "What fridge would you like to grab drink?"
    name = gets.chomp
    fridge = Fridge.find_by(location: name)
    puts "Enter name: "
    drink_name = gets.chomp
    drink = Drink.find_by(name: drink_name, fridge_id: fridge.id)
    puts "Enter ounces: "
    size = gets.chomp.to_i
    if(size > drink.size)
      puts "Not that much is available to drink!"
    else
      drink.size = drink.size - size
      if (drink.size == 0)
        drink.destroy
      end
    end
  elsif choice != 9
    puts "Please select a valid option."
  end

end while choice != 9
