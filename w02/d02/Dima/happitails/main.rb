require_relative'animal'
require_relative'client'
require_relative'shelter'
require 'pry'
def quit
  puts "Good Bye!"
end

def menu
  puts "*******Menu*******"
  puts "1. Create an animal"
  puts "2. Create a client"
  puts "3. Display all animals"
  puts "4. Display all clients"
  puts "5. Let client adopt an animal"
  puts "6. Let client put his animal up for adoption"
  puts "7. Quit"
  choice = gets.chomp
  return choice
end

###################
### Main Programm #
###################
puts "Welcome to the Happitals - shelter management program"
puts "Please give the shelter name: "
shelter_name = gets.chomp
shelter = Shelter.new(shelter_name)
puts "Congrats! #{shelter.name} shelter has been created"

menu_choice = menu
while menu_choice != "7"
  case menu_choice
  when "1"
    puts "What species is the animal?"
    species_animal = gets.chomp
    puts "What's its name?"
    name_animal = gets.chomp
    fst_animal = Animal.new(name_animal, species_animal)
    shelter.animals << fst_animal

  when "2"
    puts "What is client's name?"
    client_name = gets.chomp
    puts "What is client's age?"
    client_age = gets.chomp
    fst_client = Client.new(client_name, client_age)
    shelter.clients << fst_client

  when "3"
    shelter.display_animals

  when "4"
    shelter.display_clients

  when "5"
    #displays clients
    shelter.display_clients
    puts "Which client will be adopting an animal?"
    client_name_select = gets.chomp
    #finding client in database
    found_client = shelter.clients.find do |i|
      i.name == client_name_select
    end

    if found_client.nil?
      puts "Please enter client's name correctly"
    elsif shelter.clients.size == 0
      puts "Please add clients first"
      menu     
    end

    puts "Which pet does #{client_name_select} would like to adopt?"
    #displaying animals in shelter
    shelter.display_animals
    animal_name_select = gets.chomp
    #finding selected animal in shelter
    found_animal = shelter.animals.find do |a|
      a.name == animal_name_select
    end

    if found_animal.nil?
      puts "Please enter animals' name correctly and start over"
      menu
    end
    #giving animal to client and removing from shelter
    found_client.add_pet( found_animal )
    shelter.animals.delete( found_animal )
    puts "#{found_client.name} successfuly adopted #{found_animal.name}"

  when "6"
    #displaying clients
    shelter.display_clients
    puts "Which client will be giving animal to shelter?"
    client_name_select = gets.chomp
    #finding client in database
    found_client = shelter.clients.find do |i|
      i.name == client_name_select
    end

    if found_client.nil?
      puts "Please enter client's name correctly"
    elsif shelter.clients.size == 0
      puts "Please add clients first"
      menu
    end
    #checking if client has pes at all
    if found_client.pets.size == 0
      puts "This client doesn't have any pets, please start the menu over"
      menu
    else
      #displaying pets to shelter from client
      puts "Which pet does #{found_client.name} would like to give for adoption?"
      found_client.pets.each {|i| puts i.name + " the " + i.species}
      puts "Please enter name of the animal you prefer"
      animal_name_select = gets.chomp
      puts "Please enter species of the animal you called"
      animal_species_select = gets.chomp
      #finding pet in clients possesion
      found_animal = found_client.pets.find do |a|
        a.name == animal_name_select && a.species == animal_species_select
      end

      if found_animal.nil?
        puts "Please enter animal's name and species correctly and start over"
        menu
      end
      #adding animal to shelter and removing from client
      shelter.add_animal(found_animal)
      found_client.pets.delete(found_animal)
      puts "#{found_client.name} has successfuly given his #{found_animal.name} the #{found_animal.species} to shelter." 
    end

  else
    puts "Please enter numbers from the menu"
  end
  menu_choice = menu
end

# dog = Animal.new("Sparky", "dog")
# puts dog.name
# glenn = Client.new("Glenn", 30)
# puts glenn.age
# puts shelter.name