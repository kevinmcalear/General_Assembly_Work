,class Person
	def name=(name)
		@name = name
	end

	def name
		return @name
	end

	def age=(age)
		@age = age
	end

	def age
		return @age
	end

	def gender=(gender)
		@gender = gender
	end

	def gender
		return @gender
	end

end

class Apartment
	def initialize
		@renter = nil
	end
	def name=(name)
		@name = name
	end

	def name
		return @name
	end
	def price
		return @price
	end
	def price=(price)
		@price = price
	end

	def sqft=(sqft)
		@sqft = sqft
	end

	def sqft
		return @sqft
	end

	def num_beds=(num_beds)
		@num_beds = num_beds
	end

	def num_beds
		return @num_beds
	end

	def num_baths=(num_baths)
		@num_baths = num_baths
	end

	def num_baths
		return @num_baths
	end

	def renter=(renter)
		@renter = renter
	end

	def renter
		return @renter
	end
end

class Building
	def initialize
		@name = "Sahil's Building"
		@address = "GA West"
		@num_floors = 1
		@apartments = []
	end
	def name=(name)
		@name = name
	end

	def name
		return @name
	end

	def address=(address)
		@address = address
	end

	def address
		return @address
	end

	def num_floors=(num_floors)
		@num_floors = num_floors
	end

	def num_floors
		return @num_floors
	end

	def apartments=(apartments)
		@apartments.push(apartments)
	end

	def apartments
		return @apartments
	end

	def view()
		puts"
Building Details
Name: #{@name}
Address: #{@address}
Number of Floors: #{@num_floors}
Number of Apartments: #{@apartments.length}
		"
		#!!!!!!!!!!!!!!!!!!!!!
	end
end

b = Building.new
 input = nil

while(input != "q")
	puts "
(v)  View building details
(aa) Add an apartment to the building
(at) Add a tenant
(l)  List the apartment directory for the building
(q)  Quit"
input = gets.chomp
if input == "v"
	b.view()
elsif input == "aa" 
	a = Apartment.new 
	b.apartments=(a)
	puts "What is the name?"
	a.name=(gets.chomp)
	puts "What is the price?"
	a.price=(gets.chomp)
	puts "What is the sqft?"
	a.sqft=(gets.chomp)
	puts "What is the number of beds?"
	a.num_beds=(gets.chomp)
	puts "What is the number of baths?"
	a.num_baths=(gets.chomp)
elsif input == "at"
	t = Person.new
	puts "What's their name?"
	t.name=(gets.chomp)
	puts "What's their age?"
	t.age=(gets.chomp)
	puts "What's their gender?"
	t.gender=(gets.chomp)
	puts "What apartment?"
	choice = gets.chomp
	b.apartments.each do |apartment| 
		if apartment.name == choice
			apartment.renter=(t)
		end
	end
elsif (input == "l")
	b.apartments.each do |apartment|
		if apartment.renter == nil
			puts "Apartment #{apartment.name} costs #{apartment.price} and is #{apartment.sqft} with #{apartment.num_beds} and #{apartment.num_baths}."
		else
			puts "#{apartment.renter.name} lives in #{apartment.name}"
		end
	end

end #if statement ends
end #while loop ends