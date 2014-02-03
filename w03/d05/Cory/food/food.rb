require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "coryhaber",
  :password => "",
  :database => "food_db"
  )


class Fridge < ActiveRecord::Base
  has_many :foods
end

class Food < ActiveRecord::Base
  has_one :fridges
end

class Drink < ActiveRecord::Base
  has_one :fridges
end


begin

puts
puts "********** Welcome to the Fridge Management App ***********"
puts

puts "1. List all Fridges"
puts "2. Add a Fridge"
puts "3. Delete a Fridge"
puts "4. View all food items in a specific fridge"
puts "5. Add a food item to a fridge"
puts "6. Eat a food item from a fridge" #delete it
puts "7. View all drink items in a specific fridge"
puts "8. Add a drink item to a fridge"
puts "9. Consume PART of a drink" #update its size in oz
puts "10. Consume ALL of a drink from a fridge" # delete it
puts "11. Quit app"
puts ""
puts "Enter a number from the menu: "

menu = gets.chomp.to_i

case menu

  when 1 #list all fridges
    list = Fridge.all
    list.each do |fridge|
      puts "#{fridge.location}"
    end
  when 2 #add a fridge
    puts "Enter a fridge location: "
    location = gets.chomp
    puts "What is the fridges brand name? "
    brand = gets.chomp
    puts "What is the fridge size in cubic feet? "
    size = gets.chomp

    Fridge.create(location: location, brand: brand, size: size)

  when 3 #delete a fridge
    puts "Which fridge do you want to delete? "
        list = Fridge.all
        list.each do |fridge|
        puts "#{fridge.location}"
     end
    location = gets.chomp
    delete = Fridge.find_by(location: location)
    delete.destroy
  
  when 4 #view all food items in a specific fridge
    puts "Enter a fridge ID to view its contents: "
        list = Fridge.all
        list.each do |fridge|
        puts "Location: #{fridge.location}, ID: #{fridge.id}"
     end
    id = gets.chomp
        list = Food.where(fridge_id: id)
        list.each do |food|
        puts "#{food.name} is #{food.weight}lbs and is vegan? #{food.vegan}, entered #{food.date_entered}."
      end
  when 5 #add food item to a fridge
    puts "Which fridge are you adding this item to? (enter id #) "
       list = Fridge.all
       list.each do |fridge|
       puts "Location: #{fridge.location}, ID: #{fridge.id}"
     end
    id = gets.chomp
    puts "Enter food name: "
    name = gets.chomp
    puts "Enter the weight of #{name} in lbs? "
    weight = gets.chomp
    puts "Is #{name} vegan (y) (n)? "
    vegan = gets.chomp

    Food.create(name: name, weight: weight, vegan: vegan, fridge_id: id)
   
  when 6 #Eat a food item from a  fridge (delete it)
    puts "Enter food item you want to eat: "
    eat = gets.chomp

    delete = Food.find_by(name: eat)
    delete.destroy

  when 7 #view all drinks in a specific fridge
    puts "Enter a fridge id #: "
    id = gets.chomp
      list = Drink.where(fridge_id: id)
      list.each do |drink|
      puts "Drink: #{drink.name}"
    end
  when 8 #add a drink item to a fridge
    puts "Enter a fridge name to add this item to (enter ID #): "
       list = Fridge.all
       list.each do |fridge|
     puts "Location: #{fridge.location}, ID: #{fridge.id}"
     end
    id = gets.chomp
    puts "Enter a drink name: "
    name = gets.chomp
    puts "Enter a size in oz: "
    size = gets.chomp.to_i
    puts "Is #{name} alcoholic? (y) (n) "
    alcoholic = gets.chomp

    Drink.create(name: name, size: size, alcoholic: alcoholic, fridge_id: id)

  when 9 #consume part of a drink # list num of oz and reduce by entered amount
    puts "Please select a fridge"
        puts "Enter a fridge name to ID # to consume a drink: "
        f_list = Fridge.all
        f_list.each do |fridge|
      puts "Location: #{fridge.location}, ID: #{fridge.id}"
     end
    id = gets.chomp
    puts "What drink would you like to consume? "
        d_list = Drink.where(fridge_id: id)
        d_list.each do |drink|
      puts "Drink: #{drink.name} currently has #{drink.size}oz left."
     end
    drink = gets.chomp
    puts "How many oz would you like to consume? "
    oz = gets.chomp.to_i
    
    current_oz = Drink.where(name: drink)
    current_oz.each do |oz|
      drink.size
    end
   
    # new_oz = Drink.find_by(name: drink)
     #    Drink.sum(drink.size)
        
     #   n_list = Drink.find_by(name: drink)
     #   n_list.update(size: new_oz)


  when 10 #consume all of a drink (delete it)
    puts "Please select a fridge: "
    fridge = gets.chomp
    puts "What drink would you like to consume? "
    drink = gets.chomp

    delete = Drink.find_by(name: drink)
    delete.destroy

  end
  end while menu != 11  





