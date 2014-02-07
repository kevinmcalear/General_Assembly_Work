##Creating the Classes
class Person
  def name= (name)
    @name = name
  end
  def age= (age)  
    @age = age
  end 
  def gender= (gender)
    @gender = gender
  end
  def name
    return @name
  end
  def age
    return @age
  end
  def gender
    return @gender
  end 
end

class Apartment
  def apartment_name= (name)
    @name = name
  end
  def price= (price)
    @price = price
  end
  def sqft= (sqft)
    @sqft = sqft
  end
  def num_beds= (num_beds)
    @num_beds = num_beds
  end
  def num_baths= (num_baths)
    @num_baths = num_baths
  end
  def renter= (renter)
    @renter = renter
  end 
  def apartment_name
    @name
  end
  def price
    @price
  end
  def sqft
    @sqft
  end
  def num_beds
    @num_beds
  end
  def num_baths
    @num_baths
  end
  def renter
    @renter
  end 
end

class Building
  def initialize
    @building_apartment_array = []
  end 
  def name= (name)
    @name = name
  end 
  def address= (address)
    @address = address
  end
  def num_floors= (num_floors)
    @num_floors = num_floors
  end
  def name
    return @name
  end
  def address
    return @address
  end
  def num_floors
  return @num_floors
  end
  def building_apartment_array
    return @building_apartment_array
  end
  def create_building_apartment_array(array)
    self.building_apartment_array.push(array)
  end
end

##Building Details.  Used in Step 1. 
def view_building_details(building)
    puts "The #{building.name} is located at #{building.address}."  
    puts "It has #{building.num_floors} floors."
    if building.building_apartment_array.count > 0
      puts "There are #{building.building_apartment_array.count} rooms"  
    else " "
    end 
end

## Create an Apartment.  Used in Step 2. 
def create_apartment_form(building)
  apartment_name = Apartment.new
  apartment_hash = Hash.new
  puts "What is the name of the apartment"
    apartment_name.apartment_name= gets.chomp
    apartment_hash[:name]= apartment_name.apartment_name
  puts "What is the price of the apartment?"
    apartment_name.price= gets.chomp
    apartment_hash[:price]= apartment_name.price
  puts "What is the Square Foot of the apartment"
    apartment_name.sqft= gets.chomp
    apartment_hash[:sqft]= apartment_name.sqft
  puts "How many bedrooms are there?"
    apartment_name.num_beds= gets.chomp
    apartment_hash[:num_beds]= apartment_name.num_beds
  puts "How many baths are there?"
    apartment_name.num_baths= gets.chomp
    apartment_hash[:num_baths]=apartment_name.num_baths
    apartment_hash[:renter] = []
  #Add Apartment to the Building Array
  building.create_building_apartment_array(apartment_hash)  
end

## Apartment List.  Used in Step 3 to assign an apartment to a user. 
## Only shows available rooms
def apartment_name_list (building)
  apartment_name_array = []
  building.building_apartment_array.each {|hash| 
      if hash[:renter].count < hash[:num_beds]
        apartment_name_array.push(hash[:name])
      end 
    }
  puts apartment_name_array
end 

## Create a tenant.  Used in Step 3. 
def create_tenant(building)
  person_name = Person.new
  puts "What is the name of the person?"
    person_name.name= gets.chomp
  puts "What is the person's age?"
    person_name.age= gets.chomp
  puts "What is the person's gender?"
    person_name.gender= gets.chomp
  ##Display list of apartments and select one
  puts "Which apartment do they live in?" 
  puts "#{apartment_name_list(building)}"
  apartment_for_tenant = gets.chomp
  ##Step 1:  Create an array with the hash of the exact apartment
  apartment_hash_to_modify = building.building_apartment_array.select {|hash| hash[:name] == apartment_for_tenant}
  ##Step 2:  Using the array from step 1:, determine the array index. 
  index = building.building_apartment_array.index(apartment_hash_to_modify[0])
  ##Step 3:  Using the array index, insert a new hash. 
  building.building_apartment_array[index.to_i][:renter].push = [person_name.name]
end

## Remove a tenant from the building. Used in Step 4. 
def remove_tenant(building)
  view_apartment_detail(building)
  puts "Which tenant would you like to remove?"
  tenant_to_remove = gets.chomp
  ##Step 1:  Create an array with the hash of the exact apartment
  apartment_hash_to_modify = building.building_apartment_array.select {|hash| hash[:renter].include? tenant_to_remove}
  ##Step 2:  Using the array from step 1:, determine the array index. 
  index = building.building_apartment_array.index(apartment_hash_to_modify[0])
  ##Step 3:  Remove the tenant
  building.building_apartment_array[index.to_i][:renter].delete(tenant_to_remove)
end

## Apartment_directory.  Used in Step 5. ru
def view_apartment_detail(building)
  i = 0
  while i < building.building_apartment_array.length 
    if building.building_apartment_array[i][:renter].length == 0 
      puts "VACANT:  #{building.building_apartment_array[i][:name]} is #{building.building_apartment_array[i][:sqft]} sqft has #{building.building_apartment_array[i][:num_beds]} rooms and #{building.building_apartment_array[i][:num_baths]} bathrooms"
    else
      puts "#{building.building_apartment_array[i][:renter].join("/")} live(s) in #{building.building_apartment_array[i][:name]}"
    end
    i += 1
  end 
end

##Instantiate the Building
arcadian = Building.new
arcadian.name= "The Arcadian"
arcadian.address= "100 Main"
arcadian.num_floors= 3

##Test data
tom = Person.new
tom.name= "Tom"
tom.age= 20
tom.gender= "M"

penthouse = Apartment.new
penthouse.apartment_name= "Apt 1A"
penthouse.price= 1000
penthouse.sqft= 800
penthouse.num_beds= 1
penthouse.num_baths= 1
penthouse.renter= ["Tom"]

apartment_hash = Hash.new
apartment_hash[:name]= penthouse.apartment_name
apartment_hash[:price]= penthouse.price
apartment_hash[:sqft]= penthouse.sqft
apartment_hash[:num_beds]= penthouse.num_beds
apartment_hash[:num_baths]=penthouse.num_baths
apartment_hash[:renter]=[tom.name]
arcadian.create_building_apartment_array(apartment_hash)  

apartment_hash = Hash.new
apartment_hash[:name]= "Apt 1B"
apartment_hash[:price]= 1000
apartment_hash[:sqft]= 750
apartment_hash[:num_beds]= 2
apartment_hash[:num_baths]= 1
apartment_hash[:renter]= ["John","Sarah"]
arcadian.create_building_apartment_array(apartment_hash)  

apartment_hash = Hash.new
apartment_hash[:name]= "Apt 2A"
apartment_hash[:price]= 1000
apartment_hash[:sqft]= 750
apartment_hash[:num_beds]= 1
apartment_hash[:num_baths]= 1
apartment_hash[:renter]= []
arcadian.create_building_apartment_array(apartment_hash)  

apartment_hash = Hash.new
apartment_hash[:name]= "Apt 2B"
apartment_hash[:price]= 1000
apartment_hash[:sqft]= 750
apartment_hash[:num_beds]= 1
apartment_hash[:num_baths]= 1
apartment_hash[:renter]= []
arcadian.create_building_apartment_array(apartment_hash)  

apartment_hash = Hash.new
apartment_hash[:name]= "Apt 3A"
apartment_hash[:price]= 1000
apartment_hash[:sqft]= 750
apartment_hash[:num_beds]= 1
apartment_hash[:num_baths]= 1
apartment_hash[:renter]= []
arcadian.create_building_apartment_array(apartment_hash)  

apartment_hash = Hash.new
apartment_hash[:name]= "Apt 3B"
apartment_hash[:price]= 1000
apartment_hash[:sqft]= 750
apartment_hash[:num_beds]= 1
apartment_hash[:num_baths]= 1
apartment_hash[:renter]= []
arcadian.create_building_apartment_array(apartment_hash)  

##Program Start
program = 1
while program > 0
puts "*********************"
puts
puts
puts "Welcome to 'The Arcadian' Building Manager.  What would you like to do?"
puts "(1): View Building Details"
puts "(2): Add an apartment to the building"
puts "(3): Add a tenant to the building"
puts "(4): Remove a tenant from the building"
puts "(5): List the apartment directory for the building"
puts "(6): Quit"
puts "*********************"
option = gets.chomp
  case option
  when "1"
    view_building_details(arcadian)
  when "2"
    create_apartment_form(arcadian)
  when "3" 
    create_tenant(arcadian) 
  when "4"
    remove_tenant(arcadian)
  when "5"
    view_apartment_detail(arcadian)
  when "6"
    puts "Thank you for using 'The Arcadian Building Manager'"
    program = 0
  end
end 
