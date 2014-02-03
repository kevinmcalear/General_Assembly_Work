require 'pry'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: "postgresql",
  host: "localhost",
  username: "jenndodd",
  password: "",
  database: "fridge_app_db"
  )

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks
end

class Food < ActiveRecord::Base
  belongs_to :customer
end

class Drink < ActiveRecord::Base
  belongs_to :customer
end

def input_for_fridge
  user_input = {}

  print "Location: "
  user_input[:location] = gets.chomp
  print "Brand: "
  user_input[:brand] = gets.chomp
  print "Size in cubic feet: "
  user_input[:size] = gets.chomp.to_i

  return user_input
end

def input_for_food
  user_input = {}

  print "Name: "
  user_input[:name] = gets.chomp
  print "Weight in pounds: "
  user_input[:weight] = gets.chomp.to_i
  print "Is it vegan? (t or f): "
  user_input[:vegan] = gets.chomp
  puts "Fridges:"
  Fridge.all.each {|fridge| puts "#{fridge.id} - #{fridge.location}"}
  print "Fridge ID: "
  user_input[:fridge_id] = gets.chomp.to_i

  return user_input
end

def input_for_drink
  user_input = {}

  print "Name: "
  user_input[:name] = gets.chomp
  print "Size in ounces: "
  user_input[:size] = gets.chomp.to_i
  print "Is it alcoholic? (t or f): "
  user_input[:alcoholic] = gets.chomp
  puts "Fridges:"
  Fridge.all.each {|fridge| puts "#{fridge.id} - #{fridge.location}"}
  print "Fridge ID: "
  user_input[:fridge_id] = gets.chomp.to_i

  return user_input
end