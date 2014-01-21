require_relative 'happitails'


####################
#####Create new shelter
####################

shelter = Shelter.new("Alan Turing Animal Shelter")

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
  puts "  4: Quit"

  answer = gets.chomp
  return answer

end

#################
### Main Program
#################

choice = menu

while choice != "4"
  case choice
  when "1"
    shelter.add_animals
  when "2"
    shelter.add_clients
  when "3"
    something
  when "4"
    #quit
  else
    puts "Error!!!"
  end
  choice = menu
end

puts shelter.animals
puts shelter.clients






