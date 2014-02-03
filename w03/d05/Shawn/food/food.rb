require 'pry'
require "active_record"

ActiveRecord::Base.establish_connection(
  adapter:  "postgresql",
  host:    "localhost",
  username: "shawnbroukhim",
  password: "",
  database: "fridges_directory"
  )

class Fridge < ActiveRecord::Base
  has_many :foods, dependent: :destroy
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
    attributes = attributes - ["id"]

    attributes.each do |attribute|
      print "#{attribute.capitalize}: "
      user_input[attribute] = gets.chomp
    end
    return user_input
  end

  def list_fridge_directory
        Fridge.all.sort_by(&:id).each do |fridge|
        puts "ID: #{fridge.id}
        Location: #{fridge.location}
        Brand: #{fridge.brand}
        Size in Cubic Feet: #{fridge.size_in_cubic_feet}"
        puts ""
      end
    end

    def list_all_food(fridge_id)
      Food.all.sort_by(&:id).each do  |food| 
        if food.fridge_id == fridge_id 
          puts "ID: #{food.id}"
          puts "Name: #{food.name}"
          puts "Weight: #{food.weight_in_pounds} lbs"
          puts "Vegan: #{food.vegan}"
          puts "Date: #{food.date}"
        end
      end
    end

    def get_food_info(attributes)
      user_input = {}
      attributes = attributes - ["id"]
      attributes.each do |attribute|
        print "#{attribute.capitalize}: "
        user_input[attribute] = gets.chomp
      end
      return user_input
    end

    def list_all_drinks(fridge)
      Drink.all.sort_by(&:id).each do |drink|
        if drink.fridge_id == fridge
          puts "ID: #{drink.id}
          name: #{drink.name}
          Size: #{drink.size_in_ounces} oz
          Alcoholic: #{drink.alcoholic}
          Fridge ID: #{drink.fridge_id}"
          puts ""
        end
      end  
    end

    def get_drink_input(attributes)
      user_input = {}
      attributes = attributes - ["id"]
      attributes.each do |attribute|
        print "#{attribute.capitalize}: "
        user_input[attribute] = gets.chomp
      end
      return user_input
    end

  system "clear"

puts "===================================="

puts "...Welcome to the Fridge Database..."
puts ""
puts "...Where Food Comes to Stay Fresh!"

puts "===================================="

begin

  puts "Please select from the menu of options below..."
  puts "(a) List all Fridges"
  puts "(b) Add a Fridge"
  puts "(c) Delete a Fridge"
  puts "(d) View all food items in a specific fridge"
  puts "(e) Add a food item to a fridge"
  puts "(f) Eat a food item from a fridge (delete it)"
  puts "(g) View all drink items in a specific fridge"
  puts "(h) Add a drink item to a fridge"
  puts "(i) Consume PART of a drink from a fridge (update its size in ounces)"
  puts "(j) Consume ALL of a drink from a fridge (delete it)"
  puts "(k) quit"
  print "> "

  choice = gets.chomp.downcase

  case choice

    when "a"
      #list all fridges
      list_fridge_directory()


    when "b"
      #add a fridge
      Fridge.create(get_user_input(Fridge.attribute_names))

    when "c"
      #delete a fridge
      puts "Which fridge would you like to delete? Enter ID"
      list_fridge_directory
      print "> "
      id_to_delete = gets.chomp
      fridge_to_delete = Fridge.find_by(id: id_to_delete)
      fridge_to_delete.destroy
      puts "Deleted..."

    when "d"
      #View all food items in a specific fridge
      puts "Which fridge's food items would you like to find out more about? Enter ID..."
      list_fridge_directory()
      print "> "
      fridge = gets.chomp.to_i
      #Fridge.all.sort_by(&:id).each do |fridge|
       list_all_food(fridge)

    when "e"
      #Add a food item to a fridge
      Food.create(get_food_info(Food.attribute_names))

    when "f"
      #"(f) Eat a food item from a fridge (delete it)"
      puts "Which fridge are you checking out? (ID)"
        list_fridge_directory()
        print "> "
        fridge = gets.chomp.to_i
        puts "Here's the food in that fridge:"
        list_all_food(fridge)
        puts "What would you like to eat?"
        food_to_eat = gets.chomp
        Food.destroy(food_to_eat)

    when "g"
      #(g) View all drink items in a specific fridge
      puts "Which fridge?"
      list_fridge_directory
      print "> "
      fridge = gets.chomp.to_i
      puts "Here are the drinks in that fridge:"
      list_all_drinks(fridge)

    when "h"
      #h) Add a drink item to a fridge
      Drink.create(get_drink_input(Drink.attribute_names))

    when "i"
      #j) Consume PART of a drink from a fridge (update its size in ounces)"
        puts "Which fridge are you checking out? (ID)"
        list_fridge_directory()
        print "> "
        fridge = gets.chomp.to_i
        puts "Which drink? (ID)"
        list_all_drinks(fridge)
        drink = gets.chomp.to_i
        puts "How many ounces are you drinking?"
        ounces = gets.chomp.to_i
        drink_to_drink = Drink.find_by(id: drink)
        drink_to_drink.size_in_ounces = drink_to_drink.size_in_ounces - ounces
        drink_to_drink.save

    
    when "j"
      #  puts "(j) Consume ALL of a drink from a fridge (delete it)"
      puts "Which fridge?"
      list_fridge_directory
      print "> "
      fridge = gets.chomp.to_i
      puts "Which drink? (id)"
      list_all_drinks(fridge)
      drink = gets.chomp.to_i
      drink_to_drink = Drink.find_by(id: drink)
      Drink.destroy(drink_to_drink)
    
    when "k"
      exit
  
    else
      puts "Invalid Option"
         end
  end while choice != 'k'


