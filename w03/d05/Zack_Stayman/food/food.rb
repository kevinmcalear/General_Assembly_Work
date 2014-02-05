require "active_record"
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "zacharystayman",
  :password => "",
  :database => "fridges_db"
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

puts `clear`

puts "====================="
puts "      Welcome to"
puts "   Fridgetron 2000"
puts "====================="

begin

  puts `clear`

  puts "(L)ist all Fridges"
  puts "(A)dd a Fridge"
  puts "(D)elete a Fridge"
  puts "(V)iew all Food in a Fridge"
  puts "Add (F)ood to a Fridge"
  puts "(E)at Food in a Fridge"
  puts "Look at all the (D)rinks in a Fridge"
  puts "Add a D(r)ink to a Fridge"
  puts "(C)onsume part of a drink"
  puts "Finis(h) a Drink"
  puts "(Q)uit"
  binding.pry
  menu = gets.chomp.downcase

  case menu

  when "l"
    list=Fridge.all
    list.each do |fridge|
      puts "##{fridge.id}, name: #{fridge.name}, location: #{fridge.location}, brand: #{fridge.brand}, #{fridge.size} cu ft."
    end
  when "a"
    print "What is the fridges name? "
    name = gets.chomp
    print "What is the fridges location? "
    location = gets.chomp
    print "What is the fridges brand? "
    brand = gets.chomp
    print "What is the fridges size in cubic feet? "
    size = gets.chomp.to_i

    Fridge.create(name: name, location: location, brand: brand, size: size)

  when "d"
    list=Fridge.all
    list.each do |fridge|
      puts "##{fridge.id}, name: #{fridge.name}, location: #{fridge.location}"
    end
    
    print "Please enter the id number of the fridge you wish to delete: "
    id = gets.chomp.to_i

    delete = Fridge.find_by(id: id)
    delete.destroy

  when "v"
    list=Fridge.all
    list.each do |fridge|
      puts "##{fridge.id}, name: #{fridge.name}, location: #{fridge.location}"
    end
    
    print "Please enter the id number of the fridge you wish to view: "
    id = gets.chomp.to_i

    view = Fridge.find_by(id: id)
    view.Foods.all.each do |food|
      puts "#{food.name}, weight: #{food.weight} lbs, vegan #{food.vegan.upcase}"
    end

  when "f"
    list=Fridge.all
    list.each do |fridge|
      puts "##{fridge.id}, name: #{fridge.name}, location: #{fridge.location}"
    end
    
    print "Please enter the id number of the fridge you wish to add food to: "
    id = gets.chomp.to_i
    add = Fridge.find_by(id: id)

    print "What is the name of this food? "
    name = gets.chomp
    print "What is the weight in pounds of this food? "
    weight = gets.chomp.to_i
    print "Is this food vegan? Please enter Y or N: "
    vegan = gets.chomp.downcase
    if vegan == "y"
      vegan = true
    else
      vegan = false
    end

    add.Foods.create(name: name, weight: weight, vegan: vegan)

  when "e"
    list=Fridge.all
    list.each do |fridge|
      puts "##{fridge.id}, name: #{fridge.name}, location: #{fridge.location}"
    end
    
    print "Please enter the id number of the fridge you wish to eat from: "
    id = gets.chomp.to_i
    eat = Fridge.find_by(id: id)

   view = Fridge.find_by(id: id)
    view.Foods.all.each do |food|
      puts "##{food.id}, #{food.name}, weight: #{food.weight} lbs, vegan #{food.vegan.upcase}"
    end

    print "please select the id number of the food you want to eat"
    id = gets.chomp.to_i
    eat = view.Foods.find_by(id: id)
    eat.destroy

  end
end while menu == "q"