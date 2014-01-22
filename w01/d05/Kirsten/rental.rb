
class Apartment
  def initialize
  end
  def apartment_name=(apartment_name)
    @apartment_name = apartment_name
  end
  def apartment_name
    return @apartment_name
  end
  def price=(price)
    @price = price
  end
  def price
    return @price
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
    return @person
  end
end

class Building
  def initialize
    @apartment = []
  end
  def apartment 
    return @apartment
  end
  def building_name=(building_name)
    @building_name = building_name
  end
  def building_name
    return @building_name
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
    @apartments = apartments
  end
  def apartments
    @apartments
  end
  def add_apartment(apartment)
    self.apartment().push(apartment)  
  end
end

class Person
  def initialize
  end
  def person_name=(person_name)
    @person_name = person_name
  end
  def person_name
    return @person_name
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
    def apartment_name=(apartment_name)
    @apartment_name = apartment_name
  end
  def apartment_name
    return @apartment_name
  end
end

def menu
  puts "Welcome to the rental index!"
  puts "What would you like to do?"
  puts "1. View building details"
  puts "2. Add an apartment to the building"
  puts "3. Add a tenant"
  puts "4. List the apartment directory for the building"
  puts "Quit"
end

madison = Building.new
madison.building_name=("The Madison")
madison.address=("25 Madison Ave")
madison.num_floors=(5)

menu 
response = gets.chomp.downcase

while response != "quit"
case response
when "1"
  puts "The name of this building is #{madison.building_name}."
  puts "It is located at #{madison.address}."
  puts "It has #{madison.num_floors} floors and #{madison.apartment.size} apartments."
  #show name, address, number of floors, number of apartments
when "2"
  puts "What's the name of the apartment?"
  name_apartment = gets.chomp
  puts "What is the square footage?"
  user_sqft = gets.chomp.to_i
  puts "What is the cost per month?"
  user_price = gets.chomp.to_i
  puts "How many bedrooms?"
  user_beds = gets.chomp.to_i
  puts "How many bathrooms?"
  user_bath = gets.chomp.to_i
  puts "Who is renting? If there is no occupant put 'none'."
  user_renter = gets.chomp

  new_apartment = Apartment.new
  new_apartment.apartment_name = name_apartment
  new_apartment.sqft = user_sqft
  new_apartment.price = user_price
  new_apartment.num_beds = user_beds
  new_apartment.num_baths = user_bath
  new_apartment.renter = user_renter

if user_renter != "none"
  puts "You have created #{name_apartment} with #{user_sqft} square feet, #{user_beds} beds, #{user_bath} baths, that #{user_renter} is renting."
else
  puts "You have created #{name_apartment} with #{user_sqft} square feet, #{user_beds} beds, and #{user_bath} baths that costs $#{user_price} per month and is currently unoccupied."
end
  
  madison.add_apartment(new_apartment)

when "3"
  puts "What is the tenant's name?"
  input_name = gets.chomp
  puts "What is their age?"
  input_age = gets.chomp
  puts "What gender are they?"
  input_gender = gets.chomp
  puts "What apartment do they live in?"
  input_apartment = gets.chomp

  new_tenant = Person.new
  new_tenant.person_name = input_name
  new_tenant.age = input_age
  new_tenant.gender = input_gender
  new_tenant.apartment_name = input_apartment

  puts "You have created a new tenant #{input_name} who is #{input_age} and #{input_gender} and lives in #{input_apartment}"
  madison.add_apartment(input_apartment)
  
when "4"
  if user_renter == "none"
  list_name = madison.apartment().each {|obj| print obj.apartment_name }
  list_sqft = madison.apartment().each {|obj| print obj.sqft }
  list_beds = madison.apartment().each {|obj| print obj.num_beds }
  list_bath = madison.apartment().each {|obj| print obj.num_baths }
  list_cost = madison.apartment().each {|obj| print obj.price } 
  list_renter = madison.apartment().each {|obj| print obj.renter } 

  puts "#{list_name[1]} is #{list_sqft} with #{list_beds} beds and #{list_bath} baths. It costs $#{list_cost} per month."
  else 
    puts "#{list_renter} is renting #{list_name}."
  end

  # cannot get this to return the correct information. Either returns the entire array for the apartment or returns nil.
  # if just the method is listed, it will put the right info, but otherwise it will not, even if you try to + other strings in between.
  # the information is going in to the array, but cannot figure out how to call information back out.

  # dir_name =  madison.apartment().each {|obj| puts obj.apartment_name }
  # puts "all this #{dir_name}"



end
menu
response = gets.chomp.downcase
end





