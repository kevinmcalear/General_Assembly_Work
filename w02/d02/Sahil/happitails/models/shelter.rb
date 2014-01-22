class Shelter
	def initialize()
		@animals = []
		@clients = []
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
			puts "#{@name} is a #{@age} year old client."
		end
	end
	def display_animals
		@animals.each do |animal|
			puts "#{@name} is a #{species}"
		end
	end
	def adopt(client,animal)
		client.pets=(animal)
		@animals.delete(animal)
	end
	def return(client,animal)
		client.pets.delete(animal)
		animals=(animal)
	end
end