##Access the Model Classes
require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'controllers/controllers.rb'
require_relative 'seeds'

##Display the Menu of Options
# puts "Which Shelter would you like to work with?"
# puts Shelter.all_names
# puts "***********"
# shelter = gets.chomp.downcase



## Run Program
program = 1
while program > 0
  #puts `clear`
  puts "***************"
  puts ""
  puts "Welcome to the Happitails System Manager"
  puts "Please select your option:"
  puts "[1]: Create an Animal"
  puts "[2]: Create a Client"
  puts "[3]: Create a Shelter"
  puts "[4]: Display the Animals"
  puts "[5]: Display the Clients"
  puts "[6]: Adopt an Animal"
  puts "[7]: Put an animal up for adoption"
  puts "[8]: Quit"
  puts ""
  puts "***************"
  option = gets.chomp
  case option
  when "1"
    create_animal($happitails)
  when "2"
    create_client($happitails)
  when "3"
  when "4"  
    display($happitails,"animals")
  when "5"
    display($happitails,"clients")
  when "6"
    adopt_animal($happitails)
  when "7"
    provide_animal($happitails)
  when "8"
    puts "Thank you for using the Happitails System Manager"
    program = 0
  end
end 