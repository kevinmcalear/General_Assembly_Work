require 'pry'
require 'active_record'


# CREATE TABLE fridges(
#   id serial PRIMARY KEY,
#   location varchar(50) NOT NULL,
#   brand varchar(50) NOT NULL,
#   size_cuft integer NOT NULL);

# CREATE TABLE foods(
#   id serial PRIMARY KEY,
#   name varchar(50) NOT NULL,
#   weight_lb decimal, 
#   vegan boolean,
#   date_time timestamp DEFAULT current_timestamp,
#   fridge_id integer references fridges(id));

# CREATE TABLE drinks(
#   id serial PRIMARY KEY, 
#   name varchar(50) NOT NULL,
#   size_oz integer,
#   alcoholic boolean
#   fridge_id integer references fridges(id));
 

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "syu",
  :password => "",
  :database => "food"
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

# fridge1 = Fridge.new
# fridge1.location = "Room A"
# fridge1.brand = "Kenmore"
# fridge1.size_cuft = 25
# fridge1.save

def fridge_input
  fridge_input = {}
  print "Location: "
  fridge_input[:location] = gets.chomp
  print "Brand: "
  fridge_input[:brand] = gets.chomp
  print "Size in cubic feet: "
  fridge_input[:size_cuft] = gets.chomp
  
  return fridge_input
end

def food_input 
  food_input = {}
  print "Food item:"
  food_input[:name] = gets.chomp
  print "Weight (in pounds):"
  food_input[:weight_lb] = gets.chomp
  print "Is it vegan?"
  food_input[:vegan] = gets.chomp
  
  puts "Which fridge are you using?"
    Fridge.all.each do |fridge|
      puts " ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end
  
  food_input[:fridge_id] = gets.chomp.to_i

  return food_input
end

def drink_input
  drink_input ={}
  print "Drink item:"
  drink_input[:name] = gets.chomp
  print "Fl.oz. :"
  drink_input[:size_oz] = gets.chomp
  print "Is it alcoholic?"
  drink_input[:alcoholic] = gets.chomp
  
  puts "Which fridge are you using?"
    Fridge.all.each do |fridge|
      puts " ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end

  drink_input[:fridge_id] = gets.chomp.to_i

  return drink_input
end

  

choice = 0

while choice != 'q'
  puts "---------------------------------------------------------"
  puts "Pick an option: "
  puts "1. List all Fridges"
  puts "2. Add a Fridge"
  puts "3. Delete a Fridge"
  puts "4. View all food items in a specific fridge"
  puts "5. Add a food item to a fridge"
  puts "6. Eat a food item from a fridge (delete it)"
  puts "7. View all drink items in a specific fridge"
  puts "8. Add a drink item to a fridge"
  puts "9. Consume PART of a drink from a fridge (update its size in ounces)"
  puts "10. Consume ALL of a drink from a fridge (delete it)"
  puts " or (q) to exit menu"
  puts "---------------------------------------------------------"

  choice = gets.chomp 

  case choice
  when "1"
      Fridge.all.each do |fridge| 
      puts " Brand: #{fridge.brand} Location: #{fridge.location}" 
    end
  
  when "2"
    puts "Current fridges:"
    Fridge.all.each do |fridge|
      puts "ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end
    
    Fridge.create(fridge_input())

  when"3"
    Fridge.all.each do |fridge|
      puts " ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end

    puts "Pick a fridge by it's ID number"
    choice = gets.chomp.to_i

    puts "Fridge #{choice} has been removed"
    Fridge.find_by_id(choice).destroy

  when "4"
    Fridge.all.each do |fridge|
      puts " ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end

    puts "Pick a fridge by it's ID number"
    choice = gets.chomp.to_i

    # Fridge.all.each do |fridge| 
    #   puts "Food items: #{fridge.food_id}"
    # end
    
   # Food.find_by_all_by_id(choice)

   # food = Food.find( :conditions => "fridge_id = #{choice}")

   Food.all.select do |food| 
    if food.fridge_id == choice
      puts food.name
    end
    end
    
  when "5"
    Food.create(food_input())

    puts "Added!"

  when "6"
    puts "What would you like? Pick by the item number "

    Food.all.each{|food| puts "Number: #{food.id}  Item: #{food.name}  In Fridge: #{food.fridge_id}"} 

    ## add frige location reference foreign key 
    item = gets.chomp

    Food.find_by_id(item).destroy
    puts "Item #{item} eaten!"

  when "7"
    Fridge.all.each do |fridge|
      puts " ID: #{fridge.id} Brand: #{fridge.brand} Location: #{fridge.location}" 
    end

    puts "Pick a fridge by it's ID number"
    input= gets.chomp.to_i

      Drink.all.select do |drink| 
        if drink.fridge_id == input
          puts drink.name 
        end
    end
  
  when "8"
    Drink.create(drink_input())

    puts "Added!"

  when"9"
    Drink.all.each do |drink|
      puts "Number: #{drink.id} Item: #{drink.name} What's left: #{drink.size_oz} "
    end

    puts ""
    puts "What would you like to drink? Pick it's item number."
    item = gets.chomp
    puts "How much of it will you be drinking?"
    consumed = gets.chomp.to_i

      Drink.all.select do |drink| 
        puts "What's left:" 
        puts drink.size_oz - consumed 

        drink.update(size_oz: drink.size_oz - consumed)
      end
    
    when "10"
      Drink.all.each do |drink|
        puts "Number: #{drink.id} Item: #{drink.name} What's left: #{drink.size_oz} "
      end
      puts "What drink would you like to finish? Pick by its item number."
      drink_choice = gets.chomp

      Drink.find_by_id(drink_choice).destroy
      puts "Item #{drink_choice} finished!"

    end
  end


binding.pry 


