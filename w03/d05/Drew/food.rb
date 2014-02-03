require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:     "localhost",
  username: "drewtunney",
  password: "",
  database: "fridge_db"
  )

class Fridge <ActiveRecord::Base
  has_many :foods
  has_many :drinks

end

class Food <ActiveRecord::Base
belongs_to :fridge

end

class Drink <ActiveRecord::Base
belongs_to :fridge

end


puts `clear`
puts "Pick an option by number: "
puts "1 - List all Fridges"
puts "2 - Add a Fridge"
puts "3 - Delete a Fridge"
puts "4 - View all food items in a specific fridge:"
puts "5 - Add a food item to a fridge"
puts "6 - Eat a food item from a fridge"

choice = gets.chomp.to_i

case choice
  when 1
    Fridge.all.each do |fridge|
      puts "Location: #{fridge.location} Brand: #{fridge.brand} Size: #{fridge.size}"
    end 
  when 2 
    print "Fridge location: "
    location = gets.chomp
    print "Fridge brand: "
    brand = gets.chomp
    print "Fridge size: "
    size = gets.chomp.to_i

    new_fridge = Fridge.new(location: location, brand: brand, size: size)
    new_fridge.save

  when 3
    Fridge.all.each do |fridge|
      puts "#{fridge.id}, #{fridge.location}"
    end
    print "Pick the fridge by number: "
    delete_fridge = gets.chomp.to_i

    Fridge.find_by_id(delete_fridge).destroy
  when 4
    puts "###### Fridges ######"
    Fridge.all.each do |fridge|
      puts "#{fridge.id}     #{fridge.location}"
    end
    "Enter the ID of the fridge: "
    id = gets.chomp.to_i

    picked_fridge = Fridge.find_by_location(id)

    binding.pry

    ### Having trouble printing all food names ###
    picked_fridge.foods.each {|food| puts food.name}

  when 5
    puts "###### Available Fridges ######"
    Fridge.all.each do |fridge|
      puts "#{fridge.id}     #{fridge.location}"
    end
    print "Food name: "
    name = gets.chomp
    print "Food weight (lbs): "
    weight = gets.chomp
    print "Vegan? True of False: "
    vegan = gets.chomp
    print "Which fridge number would you like to put it into? "
    add_to_fridge = gets.chomp.to_i

    new_food = Food.new(name: name, weight: weight, vegan: vegan, fridge_id: add_to_fridge)
    new_food.save

  when 6
    ### eat a food item from a fridge ###
    puts "###### Available Fridges ######"
    Fridge.all.each do |fridge|
      puts "#{fridge.id}     #{fridge.location}"
    end
    puts "Which fridge would you like to eat from?"
    fridge = gets.chomp.to_i

    picked_fridge = Food.find_by_fridge_id(fridge)

    puts "#{picked_fridge.id},  #{picked_fridge.name}, #{picked_fridge.weight}, #{picked_fridge.vegan}, #{picked_fridge.age}"

    print "Enter the ID of the food you'd like to eat: "
    eat_id = gets.chomp.to_i

    Food.find_by_id(eat_id).destroy

  when 7 
    ### View all drink items in a specific fridge
  when 8
    ### Add a drink item to a fridge
  when 9 
    ### Consume PART of a drink from a fridge (update its size in ounces)
  when 10
    ### Consume ALL of a drink from a fridge (delete it)




end








