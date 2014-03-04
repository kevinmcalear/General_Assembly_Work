require "active_record"
require "pry"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "sahiltrikha",
  :password => "",
  :database => "playground"
  )

class Fridge < ActiveRecord::Base
end

def print_fridges(fridges)
  Fridge.all.each do |fridge|
    puts "Location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size}"
  end
end


system "clear"

puts "============================"
puts "Fridges Database"
puts "============================"


begin
  puts
  "
  * 1 List all Fridges
  * 2 Add a Fridge
  * 3 Delete a Fridge
  * 4 View all food items in a specific fridge
  * 5 Add a food item to a fridge
  * 6 Eat a food item from a fridge (delete it)
  * 7 View all drink items in a specific fridge
  * 8 Add a drink item to a fridge
  * 9 Consume PART of a drink from a fridge (update its size in ounces)
  * 10 Consume ALL of a drink from a fridge (delete it)
  "

  choice = gets.chomp.to_i

  if choice == 1

    print_fridges(Fridge.all)

  elsif choice == 2

    print "Enter location: "
    location = gets.chomp
    print "Enter brand: "
    brand = gets.chomp
    print "Enter size: "
    size = gets.chomp.to_i

    Fridge.create(location: location, brand: brand, size: size) 

  elsif choice == 3

    puts "Enter location: "
    selected = Fridge.where(location: gets.chomp).destroy

  elsif choice == 4
    puts "Enter Fridge location:"
    location = gets.chomp
    puts "What do you want to update?"
    puts "location, brand, size, Year"
    update_attribute = gets.chomp.downcase
    puts "What do you want to change value to?"
    change = gets.chomp

    Fridge = Fridge.find_by(:location => location)
    Fridge.update(update_attribute.to_sym => change)

  elsif choice == "d"
    puts "Enter Fridge name:"
    entered_name = gets.chomp

    Fridge = Fridge.find_by(location: entered_name)
    Fridge.destroy

  elsif choice != "q"

    puts "Please select a valid option"

  end

end while choice != "q"