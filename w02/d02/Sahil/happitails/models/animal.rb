class Animal
	def initialize(name,species)
		@name = name
		@species = species
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