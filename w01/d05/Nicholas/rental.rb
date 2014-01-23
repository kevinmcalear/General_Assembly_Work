# Rental Application by Nicholas Bundy

#--------------------------------------------------
# Classes

class Building
  def initialize()
    @apts = []
  end

  def apts
    return @apts
  end

  def occupied=()
    @occupied = []
  end

  def occupied
    return @occupied
  end

  def building_name=(store_name)
    @building_name = store_name
  end

  def building_name
    return @building_name
  end

  def add_tenant(person)
    self.occupied().push(person)
  end

  def add(apartments)
    self.apts().push(apartments)
  end

  def address=(address)
    @address = address
  end

  def address
    return @address
  end

  def num_floors=(floors)
    @floors = floors
  end

  def num_floors
    return @floors
  end

  def num_apts
    @number_of = self.apts.count
  end
end

class Apartment
 
  def initilaize()
    @occupy = []
  end

  def occupy
    return @occupy
  end

  def apt_name=(apt_name)
    @apt_name = apt_name
  end

  def apt_name
    return @apt_name
  end

  def add_p(person)
    self.occupy().push(person)
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

  def bedrooms=(bedrooms)
    @bedrooms = bedrooms
  end

  def bedrooms
    return @bedrooms
  end

  def bathrooms=(bathrooms)
    @bathrooms = bathrooms
  end

  def bathrooms
    @bathrooms
  end
end


class Person
 
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

#---------------------------------------------------------------------
# Methods

# Method for creating new apartment
def add_apt(number)
  print "Enter the square footage for the apt:"
  square_footage = gets.chomp
  number.sqft= "#{square_footage}"
  print "Enter the number of bedrooms to create:"
  bed_nums = gets.chomp
  number.bedrooms= "#{bed_nums}"
  print "Enter the number of bathrooms to create:"
  bath_nums = gets.chomp
  number.bathrooms= "#{bath_nums}"
  print "Enter a price amount for this apartment:$"
  price_amount = gets.chomp
  number.price=(price_amount)
  puts "Apartment created!"
  return number
end

# Method for adding a new tenant
def add_tenant(new_person)
  print "What is the age of the new tenant?"
  tenant_age = gets.chomp
  print "What is the gender of the new tenant?"
  tenant_gender = gets.chomp
  puts "New Tenant Created!"
  return new_person.name
end

def find_apartment_by_name(apt)
  found = newbuilding.apts.select do |apartment_name|
    apartment_name.apt_name == apt
  end
  found[0]
end

#-------------------------------------------------------------
# User Experience Begins

puts "Welcome to your new apartment building!"
puts "What would you like to call this building?"
print ">"
newbuilding = gets.chomp.downcase
store_name = newbuilding
newbuilding = Building.new
newbuilding.building_name=(store_name)

# Create a new address for the building
puts "What is the address of the building?"
print ">"
building_address = gets.chomp
newbuilding.address = "#{building_address}"

# Creating number of floors
print "How many floors would you like?"
floors = gets.chomp
newbuilding.num_floors = "#{floors}"

# Create a loop for the menu
end_program = "no"
while end_program != 5

# Create a menu 
puts
puts"--------------------------------------------------"
puts"                         MENU                     "
puts" (1)View Building Details    (3)Add Apartment     "
puts" (2)Apartment Directory      (4)Add Tenant        "
puts"                       (5)Quit                    "
puts"--------------------------------------------------"
puts

# Prompt user 
puts"Please choose an item from the menu:"
menu_choice = gets.chomp.to_i

# If user doesn't respond with a number from the list it will
# loop until they choose a number
while menu_choice > 5 
  puts "Wrong entry! Please enter a number between 1 and 5:"
  menu_choice = gets.to_i
end

# Actions in response to menu item chosen
case menu_choice

when 1
  # Show the building information
  puts "---------------------------------------------------"
  puts "          Current Building Information             "
  puts "Building Name: #{newbuilding.building_name.capitalize}  "
  puts "Address: #{newbuilding.address}              "
  puts "Number of floors: #{newbuilding.num_floors}  "
  puts "Number of Apartments: #{newbuilding.num_apts}"
  puts "---------------------------------------------------"
  end_program = "no"

when 2
  # Give a listing of occupied and unoccupied apartments
  puts "Apartment Listing"
  if !newbuilding.apts.empty?
  newbuilding.apts.each do |listing|
  puts "#{newbuilding.apts.occupy} lives in #{newbuilding.apts}"
  end
  puts
  puts "Vacant Apartments:"
  else 
    print newbuilding.apts
  end
  end_program = "no"

when 3
  # Create a new apartment
  print "Please enter a name for the apartment(ex: 1a, 2b):"
  apt_number = gets.chomp
  store_apt_name = apt_number
  apt_number = Apartment.new
  apt_number.apt_name = "#{store_apt_name}"
  add_apt(apt_number)
  newbuilding.add(apt_number)
  end_program = "no"

when 4
  # Create a new tenant
  if newbuilding.apts.empty?
    puts "No apts exist at the moment, please create one"
  else
  print "Enter the name of the new tenant:"
  new_tenant = gets.chomp
  store_person_name = new_tenant
  new_tenant = Person.new
  new_tenant.name= "#{store_person_name}"
  add_tenant(new_tenant)
  puts "Where would you like this tenant to live?"
  puts "Choose from the list below"
  newbuilding.apts.each {|x| print x.apt_name + "|"}
  puts
  print ">"
  # push the occupant into the apartment
  apt_to_occupy = gets.chomp
  found = newbuilding.apts.find do |spaces|
    spaces.apt_name == apt_to_occupy
  end
   found.add_p(new_tenant.name)

  end
  end_program = "no"

when 5
  # End the program
  puts "Program Complete, Goodbye!"
  end_program = 5
end

end













