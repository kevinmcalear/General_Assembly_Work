require_relative 'happitails'
shelter = Shelter.new("Paws4U")
puts "Your new Animal Shelter #{shelter.name} was just created!"

def menu
  puts"---------------------------------"
  puts"   Shelter Options"
  puts" (1) Create New Client"
  puts" (2) Create New Animal"
  puts" (3) List Clients"
  puts" (4) List Animals"
  puts" (5) Quit"
  user_choice = gets.chomp
  return user_choice.to_i 
end
user_choice = menu

while user_choice != 5

  case user_choice

  when 1
    shelter.add_client

  when 2
    shelter.add_animal

  when 3
    if shelter.clients.empty?
      puts "No clients in the list yet."
    else
    shelter.clients.each {|client| puts client.name + " | "}
    end

  when 4
    if shelter.animals.empty?
      puts "No animals at the shelter yet."
    else
    shelter.animals.each {|animal| puts animal.name + " | "}
    end

  else
    puts "Please enter choice from the menu"
    user_choice = gets.chomp.to_i
  end
  user_choice = menu
end
