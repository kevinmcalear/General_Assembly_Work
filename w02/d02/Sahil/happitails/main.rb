require_relative 'models/animal'
require_relative 'models/client'
require_relative 'models/shelter'

s = Shelter.new
choice = nil
while choice != "4"
puts ""
puts "MAIN MENUE (Pick a number)"
puts "   1. Create an Animal"
puts "   2. Create a client"
puts "   3. Create a shelter"
puts "   4. Quit"
choice = gets.chomp
	case choice
	when "1"
		s.animals=(Animal.new)
	when "2"
		s.clients=(Client.new)
	when "3"
		old_shelter = s
		s = Shelter.new
	when "4"
		puts "Goodbye!"
	else
		"That's not a choice"
	end
end