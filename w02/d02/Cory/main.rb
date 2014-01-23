require_relative 'happitails'
require_relative 'seeds'


####################
#####Menu
####################

def menu
  puts
  puts "*******Welcome to the Alan Turing Animal Shelter********"
  puts "Select fromthe menu below:"
  puts "  1: Create a new animal"
  puts "  2: Create a new client"
  puts "  3: Create a new shelter"
  puts "  4: Display all animals"
  puts "  5: Display all clients"
  puts "  6: Adopt an animal"
  puts "  7: Display adopted animals/clients"
  puts "  8: Put an animal up for adoption"
  puts "  9: Quit"

  answer = gets.chomp
  return answer

end

#################
### Main Program
#################

choice = menu

while choice != "9"
  case choice
  when "1"
    $shelter.add_animals
  when "2"
    $shelter.add_clients
  when "3"
    puts "You don't really need to create a shelter!"
  when "4"
     $shelter.animals.each do |animals|
        puts animals
      end
  when "5"
     $shelter.clients.each do |clients|
        puts clients
      end
  when "6"
    $shelter.adopt_animal
  when "7"
    $shelter.clients.each do |animals|
      puts animals.list_animals
     end
  when "8"
    something
  when "9"
    #quit
  else
    puts "Error!!!"
  end
  choice = menu
end









