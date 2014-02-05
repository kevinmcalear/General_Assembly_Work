require 'pry'
require 'active_record'

# Fridge
# - location
# - brand
# - size (cubic feet)
# - contains_food?
# - contains_drinks?

# Food
# - name
# - weight (lbs.)
# - is_vegan?
# - date_put_in_fridge (timestamp)


# Drink
# - name
# - size (oz.)
# - is_alcoholic?

# CLIP (command line interface program)
# be able to list, add and delete fridges
# be able to list, add and eat food in a specific fridge
# be able to list, add, and drink items in a specific fridge



ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "zzzbra",
  password: "",
  database: "fridge_db"
  )

class Fridge < ActiveRecord::Base
  has_many :food, dependent: :destroy 
  has_many :drinks, dependent: :destroy
end

class Food < ActiveRecord::Base
  belongs_to :fridge
end

class Drink< ActiveRecord::Base
  belongs_to :fridge
end

begin

puts "Please choose from the following options..."
  puts ""
  puts "(1) List all Fridges"
  puts "(2) Add a Fridge"
  puts "(3) Delete a Fridge"
  puts "(4) View all food items in a specific fridge"
  puts "(5) Add a food item to a fridge"
  puts "(6) Eat some food from a fridge"
  puts "(7) View all drink items in a specific fridge"
  puts "(8) Add a drink item to a fridge"
  puts "(9) Consume PART of a drink from a fridge"
  puts "(10) Consume ALL of a drink from a fridge"
  puts "(11) Exit database"
  puts ""
  print "> "

  choice = gets.chomp.downcase

  case choice
  when "1"
    # List all Fridges
    fridges = Fridge.all
    fridges.each do |fridge|
      puts "Location: #{fridge.location} "
      puts "Brand: #{fridge.brand} "
      puts "Size (cubic ft.): #{fridge.size} "
      puts "Contains food: #{fridge.contains_food} "
      puts "Contains drinks: #{fridge.contains_drinks} "
      puts ""
    end

  when "2"
    # Add a Fridge
    print "Location: "
    location = gets.chomp
    print "Brand: "
    brand = gets.chomp
    print "Volume (cubic feet): "
    size = gets.chomp
    print "Contains food? (true or false): "
    contains_food = gets.chomp
    print "Contains drinks? (true or false): "
    contains_drinks = gets.chomp

    Fridge.create(
      location: location,
      brand: brand,
      size: size,
      contains_food: contains_food,
      contains_drinks: contains_drinks
      )

  when "3"
    # Delete a Fridge
    fridges = Fridge.all
    fridges.each { |fridge| 
      puts "Fridge at #{fridge.location}"
      puts ""
    }
    print "Input fridge location to remove from database: "
    which_fridge = gets.chomp
    which_fridge = Fridge.find_by(location: which_fridge )
    which_fridge.destroy
    puts "#{which_fridge} has been removed from the database. "

  when "4"
    # View all food items in a specific fridge
    food = Food.all
    food.each do |food_item|
      puts "Name: #{food_item.name}"
      puts "Weight: #{food_item.weight} lbs."
      puts "Vegan: #{food_item.is_vegan}"
      puts "Put in fridge: #{food_item.date_put_in_fridge}"
      puts ""
    end

  when "5"
    # Add a food item to a fridge
    print "Name: "
    name = gets.chomp
    print "Weight (lbs.): "
    weight = gets.chomp
    print "Vegan (true or false): "
    is_vegan = gets.chomp
    print "Date placed in fridge: "
    date_put_in_fridge = gets.chomp
    # write method for printing fridge locations
    print "Fridge location: "
    fridge_location = gets.chomp
    fridge_id = Fridge.find_by(location: fridge_location)

   
   Food.create(
    name: name, 
    weight: weight, 
    is_vegan: is_vegan,
    date_put_in_fridge: date_put_in_fridge,
     fridge_id: fridge_id.fridge_id
    )

  when "6"
    # Eat some food from a fridge
    puts "Which fridge is the food in? "
    fridges = Fridge.all
    fridges.each { |fridge| 
      puts "Fridge at #{fridge.location}"
    }
    print "Input fridge location to remove from database: "
    which_fridge = gets.chomp
    which_fridge = Fridge.find_by(location: which_fridge )
    
    puts "What food do you want to eat? "
    puts ""
    foods = Food.all
    foods.each { |food| 
      puts "#{food.name}"
    }
    puts ""
    what_food = gets.chomp
    what_food = Food.find_by(name: what_food )
    what_food.destroy
    puts "Mmmmm #{what_food} was so tasty! "

  when "7"
    # View all drink items in a specific fridge


  when "8"
    # Add a drink item to a fridge


  when "9"
    # Consume PART of a drink from a fridge


  when "10"
    # Consume ALL of a drink from a fridge


  when "11"
    exit

  else
    puts ""
    puts "INVALID INPUT"
    puts ""

  end
end while choice != "11"














`
CREATE TABLE fridges (
  id serial PRIMARY KEY,
  location varchar(100) NOT NULL,
  brand varchar(100) NOT NULL,
  size integer DEFAULT 1,
  contains_food boolean NOT NULL DEFAULT FALSE,
  contains_drinks boolean NOT NULL DEFAULT FALSE 
  );
CREATE TABLE foods (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  weight integer DEFAULT 1,
  is_vegan boolean NOT NULL DEFAULT FALSE,
  date_put_in_fridge timestamp DEFAULT current_timestamp,
  fridge_id integer references fridges(id) NOT NULL
  );
CREATE TABLE drinks (
  id serial PRIMARY KEY,
  name varchar(100) NOT NULL,
  size integer DEFAULT 1,
  is_alcoholic boolean NOT NULL DEFAULT FALSE,
  fridge_id integer references fridges(id) NOT NULL 
  );
`