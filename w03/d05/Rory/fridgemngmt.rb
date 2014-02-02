
require "active_record"

ActiveRecord::Base.establish_connection(
  :adapter => "postgresql",
  :host => "localhost",
  :username => "rorybudnick",
  :password => "",
  :database => "fridge_db"
  )

#psql work to set up db and tables
#CREATE DATABASE fridge_db

#CREATE TABLE fridges (id serial PRIMARY KEY, location
#varchar(100) NOT NULL, brand varchar(100) NOT NULL, size integer DEFAULT 1, contains_food bool NOT NULL, contains_drinks bool NOT NULL);

#CREATE TABLE foods (id serial PRIMARY KEY, name varchar(100) NOT NULL, weight integer DEFAULT 1, vegan bool NOT NULL, time timestamp NOT NULL, fridges_id integer references fridges(id));

#CREATE TABLE drinks (id serial PRIMARY KEY, name varchar(100) NOT NULL, size integer DEFAULT 1, alcoholic bool NOT NULL, fridges_id integer references fridges(id));

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks
end

class Food < ActiveRecord::Base
   belongs_to :fridges
end

class Drink < ActiveRecord::Base
   belongs_to :fridges
end


def get_user_input(attributes)
  user_input = {}

  attributes.each do |attribute|
    print "#{attribute.capitalize}:"
    user_input[attribute] = gets.chomp
  end

  return user_input
end


#get_user_input([:location, :brand, :size, :contains_food, :contains_drinks])
get_user_input(Fridge.attribute_names)

##Set up menu
system "clear"
puts "Welcome to the Fridge Management System"

def menu
  puts ""
  puts "Enter a selection: "
  puts "(1) List all Fridges"
  puts "(2) Add a Fridge"
  puts "(3) Delete a Fridge"
  puts "(4) View all food items in a specific fridge"
  puts "(5) Add a food item to a fridge"
  puts "(6) Eat a food item from a fridge (delete it)"
  puts "(7) View all drink items in a specific fridge"
  puts "(8) Add a drink item to a fridge"
  puts "(9) Consume PART of a drink from a fridge (update its size in ounces)"
  puts "(10) Consume ALL of a drink from a fridge (delete it)"
  puts "(Q) Quit"
end

menu
choice = gets.chomp.downcase

while choice !="q"
  case choice
  when 1
    results = Fridge.all
    results.each { |row| puts "Fridge Name: #{row["title"]} composer: #{row["composer"]} #Lyricist: #{row["lyricist"]} Year: #{row["year"]}" }
  end
