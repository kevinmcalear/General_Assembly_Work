class Shelter
	def initialize(animals=[],clients=[])
		@animals = animals
		@clients = clients
	end
	def animals
		return @animals
	end
	def animals=(animal)
		@animals << animal
	end
	def clients=(client)
		@clients << client
	end
	def clients
		return @clients
	end
	def display_clients
		@clients.each do |client|
			puts "#{client.name} is a #{client.age} year old client."
		end
	end
	def display_animals
		@animals.each do |animal|
			puts "#{animal.name} is a #{animal.species}"
		end
	end
	def pick_client()
		display_clients
		input = gets.chomp
		picked_client = nil
		@clients.each do |client|
			if client.name == input
				picked_client = client #pass by value?
			end
		end
		picked_client
	end
	def adopt()
		puts "Which client would like to adopt?"
		picked_client = pick_client()
		
		picked_animal = nil
		puts "Which animal would #{picked_client.name} like to adopt?"
		display_animals
		input = gets.chomp
		@animals.each do |animal|
			if animal.name == input
				picked_animal = animal
			end
		end
		picked_client.pets=(@animals.delete(picked_animal))
	end
	def return()
		puts "Which client would like to return?"
		picked_client = pick_client()
		
		picked_animal = nil
		puts "Which of #{picked_client.name}'s pets would he like to return?"
		picked_client.pets.each do |pet|
			puts pet.name + " "
		end
		input = gets.chomp
		picked_client.pets.each do |pet|
			if pet.name == input
				picked_animal = picked_client.pets.delete(pet)
			end
		end
		self.animals=(picked_animal)

	end
end