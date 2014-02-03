require_relative "lib/food"
require_relative "lib/fridge"
require_relative "lib/drink"
require "active_record"
require 'pry'


ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "grangerabuhoff",
  password: "",
  database: "food"
  )


def get_user_input(attributes)
  user_input = {}
  attributes = attributes  - ["id"]

  attributes.each do |attribute|
    print "#{attribute.capitalize}: "
    user_input[attribute] = gets.chomp
  end

  return user_input
end

# def display_all(d_class, meth)
#   d_class.all.each do |row|
#     puts row.send(meth)
#   end
# end


# location = lambda { |row| return row.location}
# get_user_input(Musical.attribute_names)

puts "Pick an option by number: "

puts "1) List all Fridges"
puts "2) Add a Fridge"
puts "3) Delete a Fridge"
puts "4) View all food items in a fridge"
puts "5) Add a food item to a fridge"
puts "6) View all drink items in a fridge"
puts "7) Add a drink item to a fridge"
puts "8) Consume part of a drink from the fridge"
puts "9) Consume a whole item"



menu_choice = gets.chomp.to_i

case menu_choice
when 1
  Fridge.all.each {|fridge| puts fridge.location}
when 2
  fridge_info = get_user_input(Fridge.attribute_names)
  Fridge.create(fridge_info)
when 3
  puts "Choose a fridge to delete"

  Fridge.all.each {|fridge| puts fridge.location}
  del_choice = gets.chomp

  Fridge.find_by_location(del_choice).destroy
when 4
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge_choice = gets.chomp

  fridge = Fridge.find_by_location(fridge_choice)
  fridge.foods.each {|food| puts food.name}

when 5
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge = Fridge.find_by_location(gets.chomp)

  food_info = get_user_input(Food.attribute_names - ["fridge_id"])

  fridge.foods.create(food_info)

when 6
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge_choice = gets.chomp

  fridge = Fridge.find_by_location(fridge_choice)
  fridge.drinks.each {|drink| puts drink.name}

when 7
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge = Fridge.find_by_location(gets.chomp)

  drink_info = get_user_input(Drink.attribute_names - ["fridge_id"])

  fridge.drinks.create(drink_info)

when 8
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge = Fridge.find_by_location(gets.chomp)
  
  puts "Choose a drink:"
  fridge.drinks.each {|drink| puts "#{drink.name} #{drink.size} ounces"}

  drink = Drink.find_by_name(gets.chomp)
  puts "How much do you want to drink?"
  drink.size = drink.size - gets.chomp.to_i
  drink.save

when 9
  puts "Choose a fridge:"
  Fridge.all.each {|fridge| puts fridge.location}
  fridge = Fridge.find_by_location(gets.chomp)
  print "Drink or Food:"
  delete_choice = gets.chomp.downcase

  if delete_choice == "drink"
    puts "Choose a drink:"
    fridge.drinks.each {|drink| puts "#{drink.name}"}

    Drink.find_by_name(gets.chomp).destroy
  else
    puts "Choose a food:"
    fridge.foods.each {|food| puts "#{food.name}"}

    Food.find_by_name(gets.chomp).destroy
  end

end






