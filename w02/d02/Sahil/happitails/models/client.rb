class Client
	def initialize(name,age)
		@name = name
		@age = age
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