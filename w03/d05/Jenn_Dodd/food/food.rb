require_relative 'food_methods'
require 'pry'
require 'active_record'


ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "jenndodd",
  password: "",
  database: "fridge_app_db"
  )

system "clear"
puts 
puts "================================="
puts "   Welcome to the Fridge App!"
puts "================================="
puts


begin 
  puts
  puts "------------- Menu --------------"
  puts " 1.  List all fridges"
  puts " 2.  Add a fridge"
  puts " 3.  Delete a fridge"
  puts " 4.  View all foods in a fridge"
  puts " 5.  Add a food item"
  puts " 6.  Eat a food item"
  puts " 7.  View all drinks in a fridge"
  puts " 8.  Add a drink item"
  puts " 9.  Drink some of a drink item"
  puts " 10. Drink all of a drink item"
  puts " 11. Quit"

  choice = gets.chomp.to_i

  system "clear"

  case choice
  when 1
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}, Brand: #{fridge.brand},  Size: #{fridge.size} cubic feet"}
    else
      puts "There are no fridges yet."
    end

  when 2 
    Fridge.create(input_for_fridge())

  when 3
    if Fridge.all.count > 0 
      Fridge.all.each do |fridge| 
        puts "#{fridge.id}. Location: #{fridge.location}"
      end

      print "Fridge to delete: "
      fridge_number = gets.chomp.to_i

      Fridge.find_by_id(fridge_number).destroy
    else
      puts "There are no fridges yet."
    end

  when 4
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}"}

        print "Fridge choice: "
        fridge_number = gets.chomp.to_i

        chosen_fridge = Fridge.find_by_id(fridge_number)

        if chosen_fridge.foods.to_a.count > 0
          chosen_fridge.foods.to_a.each do |food| 
            puts "#{food.id}. Name: #{food.name}, Weight: #{food.weight} pounds,  Vegan: #{food.vegan}, Time added: #{food.time_added}"
          end
        else
          puts "There is no food in this fridge yet."
        end

    else
      puts "There are no fridges yet."
    end

  when 5
    if Fridge.all.count > 0
      Food.create(input_for_food())
    else
      puts "There are no fridges yet."
    end
  when 6
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}"}

        print "Fridge choice: "
        fridge_number = gets.chomp.to_i

        chosen_fridge = Fridge.find_by_id(fridge_number)

        if chosen_fridge.foods.to_a.count > 0
          chosen_fridge.foods.to_a.each do |food| 
            puts "#{food.id}. Name: #{food.name}, Weight: #{food.weight} pounds,  Vegan: #{food.vegan}, Time added: #{food.time_added}"
          end

          print "Food choice: "
          food_number = gets.chomp.to_i

          chosen_fridge.foods.find_by_id(food_number).destroy

        else
          puts "There is no food in this fridge yet."
        end

    else
      puts "There are no fridges yet."
    end

  when 7 
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}"}

        print "Fridge choice: "
        fridge_number = gets.chomp.to_i

        chosen_fridge = Fridge.find_by_id(fridge_number)

        if chosen_fridge.drinks.to_a.count > 0
          chosen_fridge.drinks.to_a.each do |drink| 
            puts "#{drink.id}. Name: #{drink.name}, Size: #{drink.size} ounces,  Alcoholic: #{drink.alcoholic}"
          end
        else
          puts "There are no drinks in this fridge yet."
        end

    else
      puts "There are no fridges yet."
    end
  when 8 
    if Fridge.all.count > 0
      Drink.create(input_for_drink())
    else
      puts "There are no fridges yet."
    end
  when 9
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}"}

        print "Fridge choice: "
        fridge_number = gets.chomp.to_i

        chosen_fridge = Fridge.find_by_id(fridge_number)

        if chosen_fridge.drinks.to_a.count > 0
          chosen_fridge.drinks.to_a.each do |drink| 
            puts "#{drink.id}. Name: #{drink.name}, Size: #{drink.size} ounces,  Alcoholic: #{drink.alcoholic}"
          end

          print "Drink choice: "
          drink_number = gets.chomp.to_i

          chosen_drink = chosen_fridge.drinks.find_by_id(drink_number)

          print "Ounces left: "
          ounces_left = gets.chomp.to_i

          chosen_drink.update(size: ounces_left)

        else
          puts "There are no drinks in this fridge yet."
        end

    else
      puts "There are no fridges yet."
    end
  when 10
    if Fridge.all.count > 0
      Fridge.all.each {|fridge| puts "#{fridge.id}. Location: #{fridge.location}"}

        print "Fridge choice: "
        fridge_number = gets.chomp.to_i

        chosen_fridge = Fridge.find_by_id(fridge_number)

        if chosen_fridge.drinks.to_a.count > 0
          chosen_fridge.drinks.to_a.each do |drink| 
            puts "#{drink.id}. Name: #{drink.name}, Size: #{drink.size} ounces,  Alcoholic: #{drink.alcoholic}"
          end

          print "Drink choice: "
          drink_number = gets.chomp.to_i

          chosen_fridge.drinks.find_by_id(drink_number).destroy

        else
          puts "There is no food in this fridge yet."
        end

    else
      puts "There are no fridges yet."
    end

  else
    "That is not a valid choice."
  end
    
end while choice != 11

puts "Thanks for using the Fridge App!"




























