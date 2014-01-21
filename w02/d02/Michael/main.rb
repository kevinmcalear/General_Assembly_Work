##Access the Model Classes
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'controllers/controllers.rb'

##Instantiate a new shelter
happitails = Shelter.new("Happitails")
happitails.create_animals_array(
    :name=>"Rover", :species=>"Beagle", :toy=>["ball"]
    )
happitails.create_animals_array(
    :name=>"Pookie", :species=>"Retriever", :toy=>["ball, bone"]
    )
happitails.create_animals_array(
    :name=>"Buster", :species=>"Cocker Spaniel", :toy=>["ball"]
    )
happitails.create_clients_array(
    [:name=>"Tom", :age=>20]
    )

##TEST##

##Display the Menu of Options
program = 1
while program > 0
  #puts `clear`
  puts "***************"
  
  puts happitails.animals
  puts happitails.animals.length
  puts happitails.animals[0][:name]


  puts ""
  
  puts "Welcome to the Happitails System Manager"
  puts "Please select your option:"
  puts "[1]: Create an Animal"
  puts "[2]: Create a Client"
  puts "[3]: Create a Shelter"
  puts "[4]: Display the Animals"
  puts "[5]: Display the Clients"
  puts "[6]: Quit"
  puts ""
  puts "***************"
  option = gets.chomp
  case option
  when "1"
    create_animal(happitails)
  when "2"
    create_client(happitails)
  when "3"
  when "4"  
    display(happitails,"animals")
  when "5"
    display(happitails,"clients")
  when "6"
    puts "Thank you for using the Happitails System Manager"
    program = 0
  end
end 
