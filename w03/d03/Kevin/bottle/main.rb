require_relative "lib/bottle"

puts "Welcome To My Bottle Drinking App!"
puts
puts
puts "You now have a bottle."
puts "-------------------"
bottle = Bottle.new
puts "Your bottle currently has #{bottle.state} drinks in it."
puts "Fill it up?"
puts "( Y )  or ( N )"
choice = gets.chomp.upcase

if choice == "Y"
  bottle.fill
  puts "Sweet! Your Bottle now has #{bottle.state} drinks in it!"
  puts "Do you want to take a drink?"
  puts "( Y ) or ( N )"
  answer = gets.chomp.upcase
  if answer == "Y"
    bottle.drink
    puts "Someone is thirsty! ;) Your now have #{bottle.state} drinks left."
  elsif answer == "N"
    puts "You're Lame. Bye."
  else
    puts "NO IDEA WHAT YOU SAID CHAMP."
  end
elsif choice == "N"
  puts "You're Lame. Bye."
else
  puts "NO IDEA WHAT YOU SAID CHAMP."
end

