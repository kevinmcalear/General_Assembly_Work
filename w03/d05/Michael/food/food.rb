require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => 'localhost',
  :username => 'michaelwagner',
  :password => '',
  :database => 'fridge_db'
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


system 'clear'
begin
  
  puts "========================================================="
  puts "Welcome to the General Assembly Fridge Management System"
  puts "What would you like to do? "
  puts "========================================================="
  puts "[1] List all Fridges"
  puts "[2] Add a Fridge"
  puts "[3] Delete a Fridge"
  puts "[4] View all food items in a specific fridge"
  puts "[5] Add a Food Item to a fridge"
  puts "[6] Eat a food item from a fridge (Eating Deletes)"
  puts "[7] View all drink items to a fridge"
  puts "[8] Add a Drink item to the fridge"
  puts "[9] Consumer part of a drink from the fridge"
  puts "[10] Consume ALL of a drink from a fridge"
  puts "[Q] QUIT"
  puts "========================================================="

  choice = gets.chomp.downcase
  case choice 
  when "1"
    system 'clear'
    puts "========================================================="
    puts "List of Fridges"
    puts "========================================================="
    fridges = Fridge.all
    fridges.each {|fridge| puts "#{fridge.location} has #{fridge.cubic_feet} cubic feet"}
    puts " "
    
  when "2"
    system 'clear'
    puts "========================================================="
    puts "Adding a Fridge"
    puts "========================================================="
    

    print "What is the location of the fridge? "
    location = gets.chomp
    print "What is the cubic feet of the fridge? "
    cubic_feet = gets.chomp

    Fridge.create(:location => location, :cubic_feet => cubic_feet)

    puts " "
    puts "Thank you for adding a fridge.  Your fridge has been created"


  when "3"
    system 'clear'
    puts "========================================================="
    puts "Removing a Fridge"
    puts "========================================================="

    fridges = Fridge.all
    fridges.each {|fridge| puts "ID #{fridge.id} #{fridge.location} has #{fridge.cubic_feet} cubic feet"}    
    print "Which fridge would you like to delete? Please select ID:  "
    fridge_delete = gets.chomp.to_i

    Fridge.delete(fridge_delete)

    puts "Thank you for removing a fridge."

  when "4"
    system 'clear'
    foods = Food.all
    foods.each {|food| puts "#{food.name} weights #{food.pounds}.  It was added on #{food.date_added}"}

  when "5"
    system 'clear'
    fridges = Fridge.all
    fridges.each {|fridge| puts "ID #{fridge.id} #{fridge.location} has #{fridge.cubic_feet} cubic feet"}
    print "Which fridge would you like to add the food to?  Select an ID: "
    fridge_id = gets.chomp
    print "What is the name of the food? "
    name = gets.chomp
    print "How many pounds is the food? "
    pounds = gets.chomp
    print "Is the food vegan? "
    vegan = gets.chomp

    Food.create(:name => name, :pounds => pounds, :vegan => vegan, :fridge_id => fridge_id, :date_added => Time.now)


  when "6"
    system 'clear'
    foods = Food.all 
    foods.each {|food| puts "#{food.id} #{food.name}"}
    puts "Which food would you like to eat? "
    food_eat = gets.chomp
    Food.delete(food_eat)



  when "7"
    system "clear"
    drinks = Drink.all
    drinks.each {|drink| puts drink.name}

  when "8"
    system "clear"
    fridges = Fridge.all
    fridges.each {|fridge| puts "ID #{fridge.id} #{fridge.location} has #{fridge.cubic_feet} cubic feet"}
    print "Which fridge would you like to add the drink to?  Select an ID: "
    fridge_id = gets.chomp

    print "What is the drink name? "
    name = gets.chomp
    print "How many ounces is the drink? "
    ounces = gets.chomp
    print "is the drink alcoholic? "
    alcoholic = gets.chomp

    drink = Drink.create(:name=>name, :ounces => ounces, :alcoholic => alcoholic, :fridge_id => fridge_id )

  when "9"
    system "clear"
    drinks = Drink.all
    drinks.each {|drink| puts "#{drink.id} #{drink.name} #{drink.ounces}"}
    print "Which drink do you want to drink? "
    drink_consume= gets.chomp
    print "How much would you like to consume? "
    drink_ounces = gets.chomp.to_i

    drink = Drink.find_by(id: drink_consume)
    drink.ounces = (drink.ounces - drink_ounces)
    drink.save


  when "10"
    system "clear"
    drinks = Drink.all
    drinks.each {|drink| puts "#{drink.id} #{drink.name}"}
    puts "Which drink do you want to drink?"
    drink_delete = gets.chomp

    Drink.delete(drink_delete)

  end 
end while choice != 'q'