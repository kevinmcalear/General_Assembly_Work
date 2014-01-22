

# def test
#   return "#{self.tenant_name()} is #{self.age}"
# end
# end

# testing = Tenants.new
# testing.tenant_name = "Drew"
# testing.age = "24"

# puts testing.test

# take the input and store it to a variable- then push that variable into the buildings array

class Tenants 
# intialize?
  def new_tenant=(tenant_name, age, gender)
    @tenant_name = tenant_name
    @age = age
    @gender = gender
  end

  def tenant_name()
    return @tenant_name
  end

  def age()
    return @age
  end

  def gender()
    return @gender
  end
end

class Apartment

def itialize=(apartment_name, apartment_price, apartment_sqft, num_beds, num_baths, renter)
    @apartment_name = apartment_name
    @apartment_price = apartment_price
    @apartment_sqft = apartment_sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renter = renter
    @add_apartment = []
  end

  def apartment_name()
    return @apartment_name
  end

  def apartment_price()
    return @apartment_price
  end

  def apartment_sqft()
    return @apartment_sqft
  end

  def num_beds()
    return @num_beds
  end

  def num_baths()
    return @num_baths
  end

  def renter()
    return @renter
  end

  def add_apartment()
    @apartments = add_apartment
  end
  def add_apartment
    return @add_apartment.push
  end

end

# initialize the building 
# populate with data 
# new_building = {The Elizabethian =>[] }
# resident_data = {Drew => ["23", "1"], Alex => ["23", "2"]}
# apartments_data = {1 => [1000, 500, 1, 1], 2 => [2000, 1000, 2, 2]}

class Building

  def initialize(building_name, building_address, num_floors, num_apartments)
    @building_name = building_name  
    @building_address = building_address
    @num_floors = num_floors
    @num_apartments = num_apartments
  end 

  def building_name()
    return @building_name
  end

  def building_address()
    return @building_address
  end

  def num_floors()
    return @num_floors
  end

  def num_apartments()
    return @num_apartments
  end

  def building_details
    return "Welcome to #{@building_name.to_s}, at #{@building_address}. This building has #{@num_floors} floors, and #{@num_apartments} apartments."
  end

end

building = Building.new("The Bowery Apartments", "1 Bowery", "4", "20")

puts "Please select from the following options. 1. View Building Details, 2. Add an apartment to the building. 3. Add a tenant to 4. List the apartment directory for the buidling 5. Quit (q)"
option = gets.chomp.to_i

case option != 5
  when option == 1
    puts building.building_details 
  when option == 2
    puts "What's the name of the apartment?"
    @apartment_name = gets.chomp
    puts "What's the price?"
    @apartment_price = gets.chomp.to_i
    puts "How many beds?"
    @num_beds = gets.chomp
    puts "How many baths?"
    @num_baths = gets.chomp.to_i
    puts "What's the renters name?"
    @renter = gets.chomp 
end

new_apartment = Apartment.new

new_apartment.add_apartment

#(@apartment_name, @apartment_price, @num_beds, @num_baths, @renter)




















