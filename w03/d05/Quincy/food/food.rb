class Fridge < ActiveRecord::Base
  def fridge
  create_table :fridge do |t|
    t.text :location
    t.text :brand
    t.integer :size
    t.boolean :food?
    t.boolean :drink?
  end

  def food
  create_table :food do |t|
    t.text :name
    t.integer :weight
    t.boolean :vegan?
    t.timestamps :date_in
  end

  def drink
  create_table :drink do |t|
    t.text :name
    t.integer :size
    t.boolean :alcohol?
  end
end

puts "Welcome to the Fridge Database! Please pick from the following:"

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

input = gets.chomp

if input == 1
puts fridge.all
elsif input == 2
puts "What's the new fridge name?"
new_fridge = gets.chomp
fridge.create(name: "#{new_fridge}")
elsif input == 3
puts "What's the fridge you wanna get rid of?"
old_fridge = gets.chomp
fridge.find_by(name: "#{old_fridge}")
fridge.destroy
elsif input == 4

elsif input == 5

elsif input == 6

elsif input == 7

elsif input == 8

elsif input == 9
elsif input == 10
