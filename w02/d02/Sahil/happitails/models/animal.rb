class Animal
	def initialize()
		puts "What would you like to name your animal-child?"
		@name = gets.chomp
		puts "What species is it?"
		@species = gets.chomp
		@toys = []
	end
	def name
		return @name
	end
	def species
		return @species
	end
	def toys=(toy)
		@toys << toy
	end
	def toys
		return @toys
	end
end