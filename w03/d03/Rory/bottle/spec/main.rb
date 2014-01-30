require_relative "../lib/water_bottle.rb"

system "clear"

puts "============================"
puts "Welcome to the Water Bottle App!"
puts "============================"

begin

  puts ""
  puts "What do you want to do?"  
  puts " A - Add water."
  puts " D - Drink water."
  puts " D - Display how much water there is."
  puts " Q - Quit"
  puts ""
  print " >"

  choice = gets.chomp.downcase

  if choice == "a"
    puts "How many ounces of water do you want to add?"
    ounces = gets.chomp.to_i
    WaterBottle.fill(ounces)
  elsif choice == "d"
    puts "How many ounces of water do you want to drink?"
    ounces = gets.chomp.to_i
    WaterBottle.drink(ounces)

  end


end