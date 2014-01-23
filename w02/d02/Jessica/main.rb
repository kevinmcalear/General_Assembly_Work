require_relative"happitails.rb"
require_relative"seeds.rb"

def menu
  puts "Please choose an option:
           (1) Create an animal
           (2) Create a client
           (3) Display shelter Info
           (4) Display All Animals
           (5) Display all clients
           (6) Adoption
           (7) Adoption Return
           (8) Quit"
  choice = gets.chomp
  return choice
end

menu_choice = menu


while menu_choice != 4
  case menu_choice
    when "1"
      $shelter.add_animal
    when "2"
      $shelter.add_client
    when "3"
       puts $shelter.name
    when "4" 
         $shelter.animals.each do |animals|
        puts "The animals: #{animals}"
        end     
    when "5"
        $shelter.clients.each do |clients|
        puts "The clients: #{clients}"
        end
    when "6"
      puts "What is your name?"
      adoption_client_name = gets.chomp
      puts "Which animal would you like to adopt?"
      adoption_animal_name = gets.chomp

      adopting_client = $shelter.clients.find do |client|
        client.name == adoption_client_name
      end
      
      adopting_animal = $shelter.animals.find do |animal|
        animal.name == adoption_animal_name
      end

      adopting_client.add_pets(adopting_animal)
      $shelter.animals.delete(adopting_animal)



    puts "Okay, adoption finalized! Enjoy!"

    when "7" 
      puts "What is your name?"
      return_client_name = gets.chomp
      puts "Which animal would you like to return?"
      return_animal_name = gets.chomp

      return_client = $shelter.clients.find do |client|
        client.name == return_client_name
      end
      
      return_animal = $shelter.animals.find do |animal|
        animal.name == return_animal_name
      end

      $shelter.animals().push(return_animal)
      # client.pets.delete(return_animal)

      puts "Okay, return finalized, sad."
    when "8"
       exit
    else
      puts "That wasn't an option!"
    end
    menu_choice = menu
end


