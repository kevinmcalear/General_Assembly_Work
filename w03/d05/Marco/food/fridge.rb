require 'active_record'
require 'pry'

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "mpvazquez",
  :password => "",
  :database => "fridge_mgmt_db"
  )

class Fridge < ActiveRecord::Base
  has_many (:foods, {:dependent => :destroy})
  has_many (:drinks, {:dependent => :destroy})
end

class Food < ActiveRecord::Base
  belongs_to :fridges
end

class Drink < ActiveRecord::Base
  belongs_to :fridge
end  

# binding.pry

# seed_fridge =  Fridge.create(:location => "41 Union Square West", :brand => "Frigidaire ", :size => 20)

# # Fridge Management App

# We're going to building a fridge management app to keep track of all of our food and drink using ActiveRecord. It may be helpful to review the docs for [ActiveRecord Basics](http://edgeguides.rubyonrails.org/active_record_basics.html) and [ActiveRecord Associations](http://edgeguides.rubyonrails.org/association_basics.html) for this.

# ### Menu Spec

# response = ''





begin

puts "=====================
Fridge Management App

"

# Your program should have a menu that allows you to perform the following actions:

puts "1) List all Fridges
2) Add a Fridge
3) Delete a Fridge
4) View all food items in a specific fridge
5) Add a food item to a fridge
6) Eat a food item from a fridge (delete it)
7) View all drink items in a specific fridge
8) Add a drink item to a fridge
9) Consume PART of a drink from a fridge (update its size in ounces)
10) Consume ALL of a drink from a fridge (delete it)
11) Quit"

response = gets.chomp.to_i

  case response
    when 1
      fridge = Fridge.all
      fridge.each { |fridge|
        puts "Fridge location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
      }
    when 2
      puts "Please enter new fridge information:"
      puts "Where is this fridge located?"
      get_location = gets.chomp

      puts "What is the brand of this fridge?"
      get_brand = gets.chomp

      puts "What is the size (in cubic feet)?"
      get_size = gets.chomp.downcase.to_i

      fridge = Fridge.create(:location => "#{get_location}", :brand => "#{get_brand}", :size => "#{get_size}")
    when 3
      puts "Please enter fridge information to delete:"
        fridge = Fridge.all
        fridge.each { |fridge|
          puts "#{fridge.location}, #{fridge.brand}, #{fridge.size}"
        }

      puts "Where is this fridge located?"
      get_location = gets.chomp

      puts "What is the brand of this fridge?"
      get_brand = gets.chomp

      puts "What is the size (in cubic feet)?"
      get_size = gets.chomp.downcase.to_i

      fridge = Fridge.find_by(location: "#{get_location}", brand: "#{get_brand}", size: "#{get_size}")

      fridge.destroy
    when 4
      puts "Please choose fridge ID to list food from:"
      fridge = Fridge.all
        fridge.each { |fridge|
          puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
        }
      get_id = gets.chomp.to_i

      finder = Food.where(fridges_id: get_id)

        finder.each { |food|
          puts "Food: #{food.name}, Weight: #{food.weight} lbs, Vegan: #{food.vegan}, Date Entered: #{food.date_entered}"
        }

    when 5
      puts "Please enter new food information:"
      puts "What food is it?"
      get_name = gets.chomp

      puts "How much does the food weigh (in lbs.)?"
      get_weight = gets.chomp.to_i

      puts "Is the food vegan? (Y / N)"
      vegan_question = gets.chomp.downcase

      if vegan_question == "y"
        vegan = true
      elsif vegan_question == "n"
        vegan = false
      else
        puts "Please type y for YES or n for NO."
        vegan_question = gets.chomp.downcase
      end #while vegan_question != "y" || vegan_question != "n"

      puts "Please enter ID of Fridge it will be stored in"

        fridge = Fridge.all
      fridge.each do |fridge|
        puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
      end

      get_id = gets.chomp.to_i

      food = Food.create(:name => "#{get_name}", :weight => "#{get_weight}", :vegan => "#{vegan}", :fridges_id => get_id)
    when 6
      puts "Please enter ID of Fridge you would like to eat food from:"

        fridge = Fridge.all
      fridge.each do |fridge|
        puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
      end

      get_id = gets.chomp.to_i

      puts "Please enter ID of food you would like to eat."

      finder = Food.where(fridges_id: get_id)

      finder.each { |food|
          puts "Food ID: #{food.id}, Food: #{food.name}, Weight: #{food.weight} lbs, Vegan: #{food.vegan}, Date Entered: #{food.date_entered}"
        }

      get_id_2 = gets.chomp.to_i

      eaten_food = Food.find_by(id: get_id_2)

      eaten_food.destroy
    when 7
      puts "Please choose fridge ID to list drinks from:"
      fridge = Fridge.all
        fridge.each { |fridge|
          puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
        }
      get_id = gets.chomp.to_i

      finder = Drink.where(fridges_id: get_id)

        finder.each { |drink|
          puts "Drink: #{drink.name}, Size: #{drink.size} ounces, Alcholic: #{drink.alcoholic}"
        }

    when 8
      puts "Please enter new drink information:"
      puts "What is the drink?"
      get_name = gets.chomp

      puts "How large is the drink (in ounces)?"
      get_size = gets.chomp.to_i

      puts "Is the food alcoholic? (Y / N)"
      alcohol_question = gets.chomp.downcase

      if alcohol_question == "y"
        alcohol = true
      elsif alcohol_question == "n"
        alcohol = false
      else
        puts "Please type y for YES or n for NO."
        alcohol_question = gets.chomp.downcase
      end #while alcohol_question != "y" || alcohol_question != "n"

      puts "Please enter ID of Fridge it will be stored in"

        fridge = Fridge.all
      fridge.each do |fridge|
        puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
      end

      get_id = gets.chomp.to_i

      drink = Drink.create(:name => "#{get_name}", :size => "#{get_size}", :alcoholic => "#{alcohol}", :fridges_id => get_id)
    when 9
      puts "Please choose fridge ID to locate drinks from:"
      fridge = Fridge.all
        fridge.each { |fridge|
          puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
        }
      get_id = gets.chomp.to_i

      finder = Drink.where(fridges_id: get_id)

      finder.each { |drink|
          puts "Drink ID: #{drink.id}, Drink: #{drink.name}, Size: #{drink.size} ounces, Alcholic: #{drink.alcoholic}"
        }

      puts "Please choose drink to sip from"

      get_id_2 = gets.chomp.to_i

      drink = Drink.find_by(id: get_id_2)

      puts "How many ounces would you like to drink from this drink? (#{drink.size} ounces total)"

      sip = gets.chomp.to_i

      new_size = "#{drink.size - sip}"

      drink.update(size: new_size)

      puts "The #{drink.name} now has #{drink.size} ounces"
    when 10 
      puts "Please enter ID of Fridge you would like to drink the full beverage from:"

        fridge = Fridge.all
      fridge.each do |fridge|
        puts "Fridge ID: #{fridge.id} location: #{fridge.location}, Brand: #{fridge.brand}, Size: #{fridge.size} cubic ft."
      end

      get_id = gets.chomp.to_i

      puts "Please enter ID of beverage you would like to drink."

      finder = Drink.where(fridges_id: get_id)

      finder.each { |drink|
          puts "Drink ID: #{drink.id}, Drink: #{drink.name}, Size: #{drink.size} ounces, Alcoholic: #{drink.alcoholic}"
        }

      get_id_2 = gets.chomp.to_i

      beverage_drank = Drink.find_by(id: get_id_2)

      beverage_drank.destroy
    when 11
      puts "Goodbye!"
    else
      puts "That is not a valid option. Please try again!"

  end


end while response != 11


