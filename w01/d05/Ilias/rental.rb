class Person
  def initialize(name, age, gender)
    @person_hash = {:name => name, :age => age, :gender => gender}
  end
end

class Apartment
  def initialize(name, price, sqft, num_beds, num_baths, renter)
    @apartment_hash = {:name => name, :price => price, :sqft => sqft, :num_beds => num_beds, :num_baths => num_baths, :renter => renter}
  end
end

class Building
  def initialize(name, address, num_floors, apartments)
    @building_hash = {:name => name, :address => address, :num_floors => num_floors, :apartments => apartments}
  end
  def info
    return @building_hash
  end
end

building1 = Building.new("Ice Castle", "123 Fake Street", 2, 4)

building_info = building1.info
building_name = building_info[:name]
building_address = building_info[:address]
num_apts = building_info[:apartments]
num_floors = building_info[:num_floors]

puts "#{building_name} is located at #{building_address} with #{num_apts} apts on #{num_floors} floors "