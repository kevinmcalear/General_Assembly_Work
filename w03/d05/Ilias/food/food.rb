require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "eLights",
  password: "",
  database: "playground"
)

class Fridge < ActiveRecord::Base
end

class Food < ActiveRecord::Base
end

class Drink < ActiveRecord::Base
end

class Menu
  def fridge_menu
    system "clear"

    puts "Choose from the following options:"
    puts "(L)ist all fridges"
    puts "(A)dd a fridge"
    puts "(D)elete a fridge"
    user_input_fridge = gets.chomp.upcase

    case user_input_fridge

    when "L"
      fridges = Fridge.all
      fridges.each do |fridge|
        puts "Fridge #{fridge.id}\n\tLocation:#{fridge.location}\n\tBrand: #{fridge.brand}\n\tSize(oz): #{fridge.size_oz}"
      end
      puts "press anything to continue"
      continue = gets.chomp

    when "A"
      print "Location: "
      location_ui = gets.chomp
      print "Brand: "
      brand_ui = gets.chomp.capitalize
      print "Size: "
      size_ui = gets.chomp.capitalize

    fridge = Fridge.create(
      location: "#{location_ui}",
      brand: "#{brand_ui}",
      size_oz: "size_ui"
    )

    when "D"
      fridges = Fridge.all
      fridges.each do |fridge|
        puts "Fridge #{fridge.id}\n\tLocation:#{fridge.location}\n\tBrand: #{fridge.brand}\n\tSize(oz): #{fridge.size_oz}"
      end
      puts "Ender the fridge number you wish to delete"
      delete_ui = gets.chomp.to_i
        fridge_deletion = fridges.find_by(id: delete_ui)
        fridge_deletion.destroy
    end
  end

  def food_menu
    positive_sentiment_array = ["Rock on!", "Yes, you did it :)", "Keep on keepin' on!", "Hells to the yeaaaa", "You da man", "Goodshit ma dude", "Fkya!!"]

    system "clear"

    puts "Choose from the following options:"
    puts "(A)dd food"
    puts "(E)at food"
    user_input_food = gets.chomp.upcase

    case user_input_food
    when "A"
      puts "What food do you wish to add?"
      name = gets.chomp
      puts "How many pounds is it?"
      weight = gets.chomp.to_i
      puts "Is it vegan-friendly? (enter only TRUE or FALSE)"
      is_vegan = gets.chomp.downcase

      puts "Ok which fridge would you like to add #{name} to? (enter the number)"
      fridges = Fridge.all
      fridges.each do |fridge|
        puts "Fridge #{fridge.id}\n\tLocation:#{fridge.location}\n\tBrand: #{fridge.brand}\n\tSize(oz): #{fridge.size_oz}"
      end
      fridge_choice = gets.chomp.to_i

      food = Food.create(
        name: "#{name}",
        weight_lbs: weight,
        vegan: "#{is_vegan}",
        fridge_id: fridge_choice
      )
      food.save

      puts "Great! We've added #{name} to fridge #{fridge_choice}! #{positive_sentiment_array.sample}"
      puts "press anything to continue..."
      continue = gets.chomp

    when "E"
      fridges = Fridge.all
      fridges.each do |fridge|
        puts "Fridge #{fridge.id}\n\tLocation:#{fridge.location}\n\tBrand: #{fridge.brand}\n\tSize(oz): #{fridge.size_oz}"
      end

      puts "Enter the number of the fridge you would like to eat from"
      fridge_choice_ui = gets.chomp.to_i
      foods_array = Food.where(fridge_id: fridge_choice_ui)
      foods_array.each { |food| puts food.name }

      puts "Which food would you like to eat"
      food_to_eat_ui = gets.chomp
      Food.where(fridge_id: fridge_choice_ui, name: food_to_eat_ui).destroy_all
      puts "You just ate #{food_to_eat_ui}! #{positive_sentiment_array.sample}!"
      continue = gets.chomp

    end
  end

  def drink_menu
    positive_sentiment_array = ["Rock on!", "Yes, you did it :)", "Keep on keepin' on!", "Hells to the yeaaaa", "You da man", "Goodshit ma dude", "Fkya!!"]

    system "clear"

    puts "Choose from the following options:"
    puts "(A)dd Drink"
    puts "(L)ist Drinks"
    puts "(D)rink!"
    user_input_drink = gets.chomp.upcase

    case user_input_drink
    when "A"
      puts "What is the name of your drink?"
      name = gets.chomp
      puts "How many ounces is it?"
      size = gets.chomp.to_i
      puts "Is it alcoholic? (enter TRUE or FALSE)"
      is_alcoholic = gets.chomp

      fridges = Fridge.all
      fridges.each do |fridge|
        puts "Fridge #{fridge.id}\n\tLocation:#{fridge.location}\n\tBrand: #{fridge.brand}\n\tSize(oz): #{fridge.size_oz}"
      end

      puts "Which fridge are you adding #{name} to?"
      fridge_choice_ui = gets.chomp.to_i

      drink = Drink.create(
        name: "#{name}",
        size_oz: size,
        is_alcoholic: "#{is_alcoholic}",
        fridge_id: fridge_choice_ui
      )
      drink.save

      puts "Great we added #{name} to fridge #{fridge_choice_ui}! #{positive_sentiment_array.sample}!"
      puts "Press anything to continue..."
      continue = gets.chomp

    when "L"
      drinks = Drink.all
      drinks.each do |drink|
        puts "Name: #{drink.name}, Size(oz): #{drink.size_oz}, Alcoholic?: #{drink.is_alcoholic} Fridge: #{drink.fridge_id}"
      end

      puts "Press anything to continue..."
      continue = gets.chomp

    when "D"
      drinks = Drink.all
      drinks.each do |drink|
        puts "Name: #{drink.name}, Size(oz): #{drink.size_oz}, Alcoholic?: #{drink.is_alcoholic} Fridge: #{drink.fridge_id}"
      end

      puts "Which drink do you want?"
      drink_selection_ui = gets.chomp

      drink_selection = Drink.find_by(name: "#{drink_selection_ui}")

      puts "There is #{drink_selection.size_oz} ounces left in #{drink_selection.name}, how many ounces would you like to drink?"
      drink_amount = gets.chomp.to_i
        if drink_amount > drink_selection.size_oz
          puts "Sorry there are only #{drink_selection.size_oz} ounces available..."
          puts "Press anything to continue..."
          continue = gets.chomp
        else
          new_size = (drink_selection.size_oz - drink_amount)
          drink_selection.update(size_oz: new_size)
          drink_selection.save
          puts "There is #{drink_selection.size_oz} ounces remaining in #{drink_selection.name}."
          puts "Press anything to continue..."
          continue = gets.chomp
        end

    end

  end

end

##-------------------------------------------------##

begin

menu = Menu.new
system "clear"

puts "========================"
puts "YOUR FRIDGE MGMT SYSTEM"
puts "========================"
puts ""
puts "Select from the following options"
puts "(FR)idge Menu"
puts "(F)ood Menu"
puts "(D)rink Menu"

user_input = gets.chomp.upcase

case user_input
when "FR"
  menu.fridge_menu

when "F"
  menu.food_menu

when "D"
  menu.drink_menu

end

end while user_input != "Q"
