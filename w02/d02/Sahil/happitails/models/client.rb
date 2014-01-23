class Client
	def initialize(name=0,age=0,pets=[])
		@name = name
		@age = age
		@pets = pets
		
		if @name == 0 && @age == 0
			puts "What's their name?"
			@name = gets.chomp
			puts "What's their age?"
			@age = gets.chomp
		end
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