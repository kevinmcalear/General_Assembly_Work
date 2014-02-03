# ### Fridge Spec
# * has a location
# * has a brand
# * has a size in cubic feet
# * has food in it
# * has drinks in it

# CREATE TABLE fridges(
#   id serial primary key,
#   brand varchar(100),
#   size varchar(100),
#   food varchar(100),
#   drinks varchar(100)
# );

# ### Food Spec
# * has a name
# * has a weight in pounds
# * is vegan or not
# * has a timestamp of when it was put in the fridge

# CREATE TABLE foods(
#   id serial primary key,
#   name varchar(100),
#   weight varchar(100),
#   vegan varchar(100),
#   fridge_id integer references fridges(id),
#   date_added timestamp ) ;

# ### Drink Spec
# * has a name
# * has a size in ounces
# * is either alcoholic or not

# CREATE TABLE drinks(
#   id serial primary key,
#   name varchar(100),
#   size varchar(100),
#   alcoholic varchar(100) ,
#   fridge_id integer references fridges(id) ) ; 

require 'active_record'
require 'pry'
require 'pg'

ActiveRecord::Base.establish_connection( 
  :adapter => "postgresql",
  :host => "localhost",
  :username => "itorresverdugo",
  :password => "",
  :database => "fridgeapp"
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

def get_user_input(attributes)
  user_input = {}
  attributes.each do |attribute|
    print "#{attribute.capitalize}:"
    user_input[attribute] = gets.chomp
  end
  return user_input
end

choice = 0
while choice != 9

  puts "-------------------------------------"
  puts "            MENU OPTIONS"
  puts ""
  puts " (1) List All Fridges"
  puts " (2) Add a Fridge"
  puts " (3) View all food items in a specific fridge"
  puts " (4) Add a food item to a fridge"
  puts " (5) Eat a food item from a fridge (delete it)"
  puts " (6) View all drink items in a specific fridge"
  puts " (7) Add a drink item to a fridge"
  puts " (8) Consume ALL of a drink from a fridge (delete it)"
  puts " (9) Quit"
  puts
  puts "-------------------------------------"
  choice = gets.chomp.to_i

  if choice == 1
    Fridge.all.each {|fridges| puts "#{fridges.brand} size: #{fridges.size} " }

  elsif choice == 2
    new_fridge = Fridge.create( get_user_input(["brand", "size"]) )

  elsif choice == 3 
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    selection = Fridge.find_by(id: response)
    Food.all.each {|food| puts "#{food.name} weight: #{food.weight} vegan: #{food.vegan}" if food.fridge_id == response}

  elsif choice == 4
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    puts "Add a food to it "
    user_input = get_user_input( ["name", "weight", "vegan"])
    user_input[:fridge_id] = response
    new_food = Food.create( user_input )

  elsif choice == 5
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    selection = Fridge.find_by(id: response)
    puts "Choose a food to delete by id "
    Food.all.each {|food| puts "#{food.id}  #{food.name}" if food.fridge_id == response}
    delete_choice = gets.chomp.to_i
    selection = Food.find_by(id: delete_choice)
    selection.destroy
    puts "Food has been eaten"




  elsif choice == 6
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    selection = Fridge.find_by(id: response)
    Drink.all.each {|food| puts "#{food.name} size: #{food.size} alcoholic: #{food.alcoholic}" if food.fridge_id == response}

  elsif choice == 4
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    puts "Add a drink to it "
    user_input = get_user_input( ["name", "size", "alcoholic"])
    user_input[:fridge_id] = response
    new_food = Drink.create( user_input )

  elsif choice == 5
    puts "Choose a fridge by id"
    Fridge.all.each {|fridges| puts "#{fridges.id}  #{fridges.brand}" }
    response = gets.chomp.to_i
    selection = Fridge.find_by(id: response)
    puts "Choose a drink to delete by id "
    Drink.all.each {|food| puts "#{food.id}  #{food.name}" if food.fridge_id == response}
    delete_choice = gets.chomp.to_i
    selection = Drink.find_by(id: delete_choice)
    selection.destroy
    puts "Drink has been eaten"


  end

end















