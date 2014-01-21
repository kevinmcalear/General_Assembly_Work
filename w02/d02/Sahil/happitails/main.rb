require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'
require_relative 'seeds'

choice = nil
while choice != "8"
puts ""
puts "MAIN MENUE (Pick a number)"
puts "   1. Create an Animal"
puts "   2. Create a client"
puts "   3. Create a shelter"
puts "   4. Display all animals"
puts "   5. Display all clients"
puts "   6. Facilitate adoption"
puts "   7. Facilitate return"
puts "   8. Quit"
choice = gets.chomp
	case choice
	when "1"
		$shelter.animals=(Animal.new)
	when "2"
		$shelter.clients=(Client.new)
	when "3"
		$shelter = Shelter.new
	when "4"
		$shelter.display_animals
	when "5"
		$shelter.display_clients
	when "6"
		$shelter.adopt()
	when "7"
		$shelter.return
	when "8"
		puts "Goodbye!"
	else
		"That's not a choice"
	end
end