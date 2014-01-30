require_relative "lib/water_bottle.rb"

bottle = Water_Bottle.new

begin
  puts
  puts "Another day at work..."
  puts "Gotta stay focused. Gotta stay... "
  puts "HYDRATED. "
  puts 
  puts "You thirsty dude? "
  puts "(L)ook at yr water bottle. "
  puts "(D)rink some water. "
  puts "(G)o to the water fountain. "
  puts "(J)ump out the window. "
  puts
  response = gets.chomp.downcase

  if response == "l"
    puts "Water bottle is about #{(bottle.contains * 100).ceil}% full. "
  elsif response == "d"
    if bottle.contains != 0
      bottle.drink
      puts "*gulp gulp*"
    else
      puts "That's gonna be tough with no water in the water bottle. Might be time to go to the water fountain. "
    end
  elsif response == "g"
    bottle.go_to_fountain
    puts "Fillin' up the bottle. "
  elsif response == "j"
    exit
  else 
    "Damnit, I'm spacing out again!"
  end
end while response != "j"
    
