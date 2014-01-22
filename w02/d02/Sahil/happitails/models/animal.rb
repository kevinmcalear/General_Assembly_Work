class Animal
	def initialize(name=0,species=0)
		@name = name
		@species = species
		@toys = []
		
		if @name == 0 && @species == 0
			puts "What would you like to name your animal?"
			@name = gets.chomp
			puts "What species is it?"
			@species = gets.chomp
		end
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