require_relative 'happitails_classes'


puts "What is the name of your shelter?"
shelter_name = gets.chomp

happitails = Shelter.new(shelter_name)

#################
#### Menu Method
#################
def menu(shelter_name)
  puts
  puts "Choose an option:"
  puts "   1. Add an animal"
  puts "   2. Add a client"
  puts "   3. Create a shelter"
  puts "   4. List all of the pets for adoption"
  puts "   5. List all of the clients"
  puts "   6. Quit"
  response = gets.chomp
  return response
end

puts
puts "Welcome to #{shelter_name}!"
menu_response = menu(shelter_name)

while menu_response != "6"
  case menu_response
  when "1"
    happitails.add_animal 
  when "2"
    happitails.add_client
  when "3"
    puts "What is the name of your shelter?"
    new_shelter_name = gets.chomp
    new_shelter = Shelter.new(shelter_name)
    puts "#{new_shelter_name} has been added, but we think #{shelter_name} is better!"
  when "4"
    if happitails.animals != []
      happitails.animals.each do |animal|
        puts animal
      end
    else
      puts "No animals to adopt yet!"
    end
  when "5"
    if happitails.clients != []
      happitails.clients.each do |client|
        puts client
      end
    else
      puts "No clients on file yet!"
    end
  else
    puts "Sorry, that was not an option."
  end
  menu_response = menu(shelter_name)
end

puts "Thank you for visiting #{shelter_name}!"

