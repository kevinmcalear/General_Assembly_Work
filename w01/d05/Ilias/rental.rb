##Classes##
class Person
  def initialize(name, age, gender)
    @person_array = []
    @person_array << {:name => name, :age => age, :gender => gender}
  end
  def hash()
    return @person_array
  end
  def name
    return @person_array.each {|hash| hash[:name]}
  end
end

class Apartment
  def initialize(name, price, sqft, num_beds, num_baths, renter)
    @apartment_array = []
    @apartment_array << {:name => name, :price => price, :sqft => sqft, :num_beds => num_beds, :num_baths => num_baths, :renter => renter}
  end
  def listing
     return @apartment_array.each {|apt| apt[:name]}
   end
end

class Building
  def initialize(name, address, num_floors, apartments)
    @building_hash = {:name => name, :address => address, :num_floors => num_floors, :apartments => apartments}
  end
  def info()
    return @building_hash
  end
  def name()
    return @building_hash[:name]
  end
end



##Default Building##

building1 = Building.new("Ice Castle", "123 Fake Street", 2, 4)

  building_info = building1.info
  building_name = building_info[:name]
  building_address = building_info[:address]
  num_apts = building_info[:apartments]
  num_floors = building_info[:num_floors]

  ##Default Apartment##

apartment1 = Apartment.new("The Spot", 1000, 500, 1, 1, "Ilias")

##Default Person##
person1 = Person.new("Ilias", 23, "male")


#------------------------------------------------------------------#



##MENU##

puts "********APARTMENTS 4U!!********\n\n"
puts "Based on your characteristics we recommend an apartment in this building:\n"
puts "NAME: #{building_name}, LOCATION: #{building_address}, FLOORS: #{num_floors}, APTS: #{num_apts}.\n\n"
puts "You may choose from the following options:"
puts "(B)uilding details, (L)ist an apartment, (R)egister a tenant, (A)partment directory, or (Q)uit"

##USER SElECTION OPTIONS##
menu_selection = gets.chomp.upcase
while menu_selection != "Q"
case menu_selection
when "B"
  puts building1.info
when "L"
  puts "Ok, let's register a new apartment. What shall we name it?"
  name = gets.chomp.downcase

  puts "What is it's list price"
  price = gets.chomp.to_i

  puts "How many sqft is it?"
  sqft = gets.chomp.to_i

  puts "How many bedrooms?"
  bedrooms = gets.chomp.to_i

  puts "How many bathrooms?"
  bathrooms = gets.chomp.to_i

  puts "And which tenant is living here?"
  person = gets.chomp.capitalize

  puts "Great! We've registered #{person}'s #{name} apartment "
  new_apartment = Apartment.new(name, price, sqft, bedrooms, bathrooms, person)
  puts new_apartment.listings

when "R"
  puts "Ok, let's register a tenant. First, please enter their name:"
  name = gets.chomp.capitalize
  puts "Please enter the tenant's age:"
  age = gets.chomp.to_i
  puts "Please enter the tenant's gender:"
  gender = gets.chomp.downcase
  new_person = Person.new(name, age, gender)
  puts "Great! We've registered #{name} as a tenant in #{Building.name()}"
when "A"
  puts apartment1.listing
else
  puts "Sorry please try again"
end
exit
end


##MENU OPTIONS##






