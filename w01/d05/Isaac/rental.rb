
#define person class
class Person

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

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

  def gender(gender)
    @gender = gender
  end
  def gender
    return @gender
  end

end

#create person placeholder
isaac = Person.new("Isaac Torres", 26, "male")

#def create person method
def create_person()
  puts "What's the person's name?"
  person_name = gets.chomp
  puts "What's the person's age?"
  person_age = gets.chomp
  puts "What's the person's gender? male / female / other"
  person_gender = gets.chomp
  newperson = Person.new(person_name, person_age, person_gender)
  puts "You have added #{newperson.name} who is a #{newperson.age} year old #{newperson.gender}"
  return newperson

end 

#define Apartment class
class Apartment

  def initialize()
  end

  def name=(name)
    @name = name
  end
  def name
    return @name
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
    return @renter
  end

end

#still need to connect renter with a real person somehow
#define create apartment method
def create_apartment()
  puts "What's the apartment's name?"
  apartment_name = gets.chomp
  puts "What's the price?"
  apartment_price = gets.chomp
  puts "What's the apartment's square footage?"
  square_footage = gets.chomp
  puts "What's the number of beds"
  number_beds = gets.chomp
  puts "What's the number of baths"
  number_baths = gets.chomp

  newapartment = Apartment.new
  newapartment.name = apartment_name
  newapartment.price = apartment_price
  newapartment.sqft = square_footage
  newapartment.num_beds = number_beds
  newapartment.num_baths = number_baths

  puts "You have added #{newapartment.name}"
  puts "Price = $#{newapartment.price}"
  puts "Size: #{newapartment.sqft} square feet"
  puts "Number of beds: #{newapartment.num_beds}"
  puts "Number of bathrooms: #{newapartment.num_baths}"
  return newapartment 
end 


#define building class
class Building

  def initialize()
    @apartments = []
    @tenants = []
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

  def apartments()
    return @apartments
  end

  def add_apartment=(apartment)
    self.apartments() << apartment 
  end


end



#make building placeholder
building1 = Building.new
building1.name = "Building 1"
building1.address = "368 W 116th st"
building1.num_floors = 3

apt1 = Apartment.new
apt1.name = "1a"
apt1.price = 3500
apt1.sqft = 1500
apt1.num_beds = 2
apt1.num_baths = 1
building1.add_apartment = apt1


first_option = 0
while first_option != 5

puts "Menu:"
puts "1 View building details"
puts "2 Add an apartment to the building"
puts "3 Add a tenant"
puts "4 List the apartment directory for the building"
puts "5 Quit"
first_option = gets.chomp.to_i

if first_option == 1
  puts  " #{building1.name }  Address: #{building1.address}  Number of floors: #{building1.num_floors}  Number of apartments: #{building1.apartments.size} "
elsif first_option == 2
  puts "Please add an apartment"
  building1.add_apartment = create_apartment()
elsif first_option == 3
  puts "Add a tenant"
  new_renter = create_person()
  puts "Choose the apartment for this tenant"
  building1.apartments.each_with_index do |apt, idx|
    puts " #{idx}   #{apt.name} is #{apt.sqft} sqft and has #{apt.num_beds} beds and #{apt.num_baths} bath. It costs $#{apt.price} a month"
    end
    apt_choice = gets.chomp.to_i
    building1.apartments[apt_choice].renter = new_renter
elsif first_option == 4
  building1.apartments.each do |apt|
    if apt.renter == nil
    puts " #{apt.name} is #{apt.sqft} sqft and has #{apt.num_beds} beds and #{apt.num_baths} bath. It costs $#{apt.price} a month"
    else
    puts "#{apt.renter.name} lives in #{apt.name}"
    end
  end

elsif first_option == 5
  puts "You're a quitter"
end

end









# #### Adding a tenant to an apartment
# * Make sure to get the appropriate input from the user to create your person
# * Make sure to ask which apartment they want to live in
# * Add the person to that apartment
# * __NOTE:__ Only one person can live in each apartment (at least until you get to the bonus)

# #### Listing the apartments
# * List all of the apartments
# * If the apartment is unoccupied(no renters) you should say something like:
#   `Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month`
# * If the apartment is occupied by a tenant, you should say something like:
#   `Jeff lives in Apt 1A`









