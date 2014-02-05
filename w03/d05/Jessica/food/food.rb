require "active_record"
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "jessicasimon",
  :password =>  "",
  :database => "fridge_app_db"
)

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks

  # validates :location, :brand, :size,
  # presence: true

  # validates :food, :drink,
  # absence: true
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink < ActiveRecord::Base
  belongs_to :fridge

  # validates :size, 
  # numericality: {
  #   less_than: 50
  # }
end

#methods for listing fridges, food, and drinks

  def list_fridge
    fridges = Fridge.all
    fridges.each {|fridge| puts "Fridge ID: #{fridge.id} Fridge Location: #{fridge.location}"}
  end

  def list_food
    foods = Food.all
    foods.each {|food| puts "Food ID: #{food.id} Food Name: #{food.name}"}
  end

  def list_drink
    drinks = Drink.all
    drinks.each {|drink| puts "Drink ID: #{drink.id} Drink Name: #{drink.name}"}
  end

#get user input for creating fridges, foods, and drinks

def self.get_user_input(attributes)
  user_input = {}
  attributes.each do |attribute|
    print "#{attribute.capitalize}:"
    user_input[attribute] = gets.chomp.downcase
  end
  return user_input
end

begin

puts "Choose an option:
* 1. List all Fridges
* 2. Add a Fridge
* 3. Delete a Fridge
* 4. View all food items in a specific fridge
* 5. Add a food item to a fridge
* 6. Eat a food item from a fridge (delete it)
* 7. View all drink items in a specific fridge
* 8. Add a drink item to a fridge
* 9. Consume PART of a drink from a fridge (update its size in ounces)
* 10. Consume ALL of a drink from a fridge (delete it)
* 11. QUIT"

choice = gets.chomp

case choice
  when "1"
    list_fridge
  when "2"
    puts "Add a fridge:"
    Fridge.create(get_user_input(Fridge.attribute_names))
  when "3"
    puts "Here is a list of fridge locations:"
    list_fridge
    puts 'Which fridge id would you like to delete?'
    delete_fridge = gets.chomp
    Fridge.delete(delete_fridge)
  when "4"
    puts "In which fridge location would you like to view the food items(enter location)?"
    list_fridge
    fridge_location= gets.chomp
    find_fridge = Fridge.find_by location: fridge_location
    puts "Here are the foods:"
    find_fridge.foods.each do |food|
      puts food.name
    end
  when "5"
    puts "Which fridge would you like to add the food to (enter location)?"
    list_fridge
    fridge_location = gets.chomp
    puts "What is the name of food you are adding?"
    name = gets.chomp
    puts "What is the weight of food you are adding in ounces?"
    weight = gets.chomp
    puts "Is the food vegan (true or false)"
    vegan = gets.chomp
    find_fridge = Fridge.find_by location: fridge_location
    find_fridge.foods.create(name: name , weight: weight, vegan: vegan)
  when "6"
    puts "Here is a list of foods:"
    list_food
    puts 'Which food would you like to delete (choose id)?'
    delete_food = gets.chomp
    Food.delete(delete_food)
  when "7"
    puts "In which fridge location would you like to view the drinks(enter location)?"
    list_fridge
    fridge_location= gets.chomp
    find_fridge = Fridge.find_by location: fridge_location
    puts "Here are the drinks:"
    find_fridge.drinks.each do |drink|
      puts drink.name
    end
  when "8"
    puts "Which fridge would you like to add the drink to (enter location)?"
    list_fridge
    fridge_location = gets.chomp
    puts "What is the name of drink you are adding?"
    name = gets.chomp
    puts "What is the size of drink you are adding in ounces?"
    size = gets.chomp
    puts "Is the drink alcoholic (true or false)"
    alcoholic = gets.chomp
    find_fridge = Fridge.find_by location: fridge_location
    find_fridge.drinks.create(name: name , size: size, alcoholic: alcoholic)
  when "9"
    list_drink
    puts "Which drink would you like to update? Please enter id"
    update_drink = gets.chomp.to_i
    puts "What is the new size in ounces? "
    new_value = gets.chomp
    Drink.update(update_drink, :size => new_value )
  when "10"
    puts "Here is a list of foods:"
    list_drink
    puts 'Which drink would you like to delete (choose id)?'
    delete_drink= gets.chomp
    Drink.delete(delete_drink)
  when "11"
    exit
end

end while choice != "11"