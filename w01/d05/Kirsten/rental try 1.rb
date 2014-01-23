class Building
  def initialize
    @apartment = []
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
  def add_building(building)
    self.building_new().push(building)  
  end
end

# madison = Building.new
# madison.address=("25 Madison Ave")
# madison.building_name=("The Madison")
# madison.num_floors=(10)
# madison.apartments=(["1A","1B","2A","2B"])
# add_building(madison)


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
end

class Apartment
  def initialize
    @apartment
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


def menu
  puts "Welcome to the rental index!"
  puts "What would you like to do?"
  puts "* View building details = view"
  puts "* Add an apartment to the building = apartment"
  puts "* Add a tenant = tenant"
  puts "* List the apartment directory for the building = directory"
  puts "* Quit"
end

menu 
response = gets.chomp.downcase

while response != "quit"
case response
when "view"
  puts "The name of this building is #{building_name}."
  puts "It is located at #{address}."
  puts "It has #{num_floors} floors and #{apartments.size} apartments."
  #show name, address, number of floors, number of apartments
when "apartment"
  apartment = Apartment.new
  puts "What's the name of the apartment?"
  user_apartment = gets.chomp
  apartment.apartment_name=(user_apartment)
  a_n = apartment.apartment_name

  puts "What is the square footage?"
  user_sqft = gets.chomp.to_i
  apartment.sqft=(user_sqft)
  a_sqft = apartment.sqft

  puts "What is the price?"
  user_price = gets.chomp.to_i
  apartment.price=(user_price)
  a_price = apartment.price

  puts "How many bedrooms?"
  user_beds = gets.chomp
  apartment.num_beds=(user_beds)
  a_beds = apartment.num_beds

  puts "How many bathrooms?"
  user_bath = gets.chomp
  apartment.num_baths=(user_bath)
  a_bath = apartment.num_baths

  puts "Who is renting?"
  user_renter = gets.chomp
  apartment.renter=(user_renter)
  a_renter = apartment.renter

  apartment = []
  apartments = {}
  apartments = {:name => a_n}
  apartments = {:sqft => a_sqft}
  apartments = {:price => a_price}
  apartments = {:bedrooms => a_beds}
  apartments = {:bathrooms => a_bath}
  apartments = {:renter => a_renter}
  apartment.push(apartments)
  print "#{apartment.values}"

when "tenant"
  person = Person.new
  
  puts "Name?"
  user_name = gets.chomp
  person.person_name=(user_name)
  p_n = person.person_name
  
  puts "Age?"
  user_age = gets.chomp
  person.age =(user_age)
  p_a = person.age
 
  puts "Gender?"
  user_gender = gets.chomp
  person.gender=(user_gender)
  p_g = person.gender
  
  puts "What apartment?"
  user_apartment = gets.chomp
  
  people = []
  person = {}
  person = {:name => p_n}
  person = {:age => p_a}
  person = {:gender => p_g}
  person = {:apartment => user_apartment}
  people.push(people)

when "directory"
  #list the apartments and appropriate info for occupied vs unoccupied apartments. 
end
menu
response = gets.chomp.downcase
end
