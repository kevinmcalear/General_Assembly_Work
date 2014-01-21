require_relative"happitails.rb"

# def menu
#   puts "Please choose an option:
#            (1) Create an animal
#            (2) Create a client
#            (3) Shelter Info
#            (4) Quit"
#   choice = gets.chomp
#   return choice
# end

def menu
  puts "Please choose an option:
           (1) Create an animal
           (2) Create a client
           (3) Shelter Info
           (4) Display All Animals
           (5) Display all clients
           (6) Adoption
           (7) Adoption Return
           (8) Quit"
  choice = gets.chomp
  return choice
end

menu_choice = menu

shelter = Shelter.new("Happitails")

while menu_choice != 4
  case menu_choice
    when "1"
      puts shelter.add_animal
    when "2"
      puts shelter.add_client
    when "3"
       puts shelter.name
    when "4" 
        shelter.animals.each do |animals|
        puts animals
        end

        
    when "5"
        shelter.clients.each do |clients|
        puts clients
        end
    when "6"
    when "7"  
    when "8"
       exit
    else
      puts "That wasn't an option!"
    end
    menu_choice = menu
end


