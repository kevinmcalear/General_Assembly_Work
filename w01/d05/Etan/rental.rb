$renters = Array.new 
$apartments = Array.new
class Person

	def initialize


		puts "What is the renter's name?"
		self.name = gets.chomp

		puts "What is the renter's age?"
		self.age = gets.chomp

		puts "What is the renter's gender?"
		self.gender = gets.chomp

    $renters.push("#{self.name()}, #{self.age()}, #{self.gender()}")

  end


	def name=(name)
		@name=name
	end

	def name()
		return @name
	end


	def age=(age)
		@age=age
	end

	def age()
		return @age
	end


	def gender=(gender)
		@gender=gender
	end

	def gender()
		return @gender
	end


	def to_user
  	return "The renter's name is #{self.name()} who is #{self.age()} and #{self.gender()}"

  	puts "What apartment would you like to add your renter to?"

	end

end


class Apartment

	def initialize

		puts "What is the name of the apartment?"
		self.name = gets.chomp

		puts "What is the price of the apartment?"
		self.price = gets.chomp

		puts "What is the size of the apartment in square feet?"
		self.sqft = gets.chomp

		puts "How many bedrooms does the apartment have?"
		self.num_beds = gets.chomp

		puts "How many bathrooms does the apartment have?"
		self.num_baths = gets.chomp

		$apartments.push("#{self.name()}, $#{self.price()}, #{self.sqft()}, #{self.num_beds()}, #{self.num_baths()}")
	end

	def name=(name)
		@name = name
	end

	def name()
		return @name
	end


	def price=(price)
		@price=price
	end

	def price()
		return @price
	end


	def sqft=(sqft)
		@sqft=sqft
	end

	def sqft()
		return @sqft
	end

	def num_beds=(num_beds)
		@num_beds = num_beds
	end

	def num_beds()
		return @num_beds
	end


	def num_baths=(num_baths)
		@num_baths=num_baths
	end

	def num_baths()
		return @num_baths
	end


	def renter=(renter)
		@renter=renter
	end

	def renter()
		return @renter
	end

  def to_user
  return "The apartment #{self.name()} costs $#{self.price()} is #{self.sqft()} square feet with #{self.num_beds()} bedrooms and #{self.num_baths()} bathrooms."
	end

end


class Building

	def initialize

		puts "	*** *** *** ***

Welcome to Excelsior Apartments. We're located at 548 Elizabeth St., San Francisco. We have 5 floors with 10 apartments per floor.

	*** *** *** ***"

	end

	def name=(name)
		@name = name
	end

	def name()
		return @name
	end


	def address=(address)
		@address=address
	end

	def address()
		return @address
	end


	def num_floors=(num_floors)
		@num_floors=num_floors
	end

	def num_floors() 
		return @num_floors
	end

	def apartments=(apartments)
		@apartments = apartments
	end

	def aprtments()
		return @apartments
	end
end


class Evaluator



	puts "  	*** *** *** ***

	Welcome to Building Pro™, the most advanced program in the world. Y to continue Q to quit.

	*** *** *** ***"

	user_input = gets.chomp.downcase

	while user_input != "q"

			puts "  	*** *** *** ***

	Please choose from the following options by submitting the corresponding letter:

	* V = View building details
	* A = Add an apartment to the building
	* R = Add a renter
	* L = List the apartment directory for the building
	* Q = Quit

	*** *** *** ***"

	user_input = gets.chomp.downcase

		if user_input == "r"

			new_input = Person.new

			new_input

			puts new_input.to_user

			puts "Continue? Type q to quit."
			user_input = gets.chomp.downcase

		elsif user_input == "a"

			new_input = Apartment.new

			new_input

			puts new_input.to_user

			puts "Continue? Type q to quit."
			user_input = gets.chomp.downcase


		elsif user_input == "v"

			new_input = Building.new

			new_input
			

		end


	if user_input == "q"
			puts "Goodbye!"
	end

	end
end


Evaluator.new



