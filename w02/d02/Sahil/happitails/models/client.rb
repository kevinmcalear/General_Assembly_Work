class Client
	def initialize()
		puts "What's their name?"
		@name = gets.chomp
		puts "What's their age?"
		@age = gets.chomp
		@pets = []
	end
	def name
		return @name
	end
	def age
		return @age
	end
	def pets=(pet)
		@pets << pet
	end
	def pets
		return @pets
	end
end