class Building
  def initialize()
    @apts = []
  end

  def apts
    return @apts
  end

  def building_name=(building_name)
    @building_name = building_name
  end

  def add(apartments)
    self.apts().push(apartments)
  end

  def address=(address)
    @address = address
  end

  def num_floors
  end

  def num_apts
    @number_of = self.apts.count
    puts @number_of
  end
end

class Apartment
  def initialize()
    @directory = []
  end

  def directory
    return @directory
  end

  def apt_name=(apt_name)
    @apt_name = apt_name
  end

  def apt_name
    return @apt_name
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

  def addperson(person)
    self.directory().push(person)
  end

end


class Person
  def initialize
    puts "New Person is initalized!"
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

  def gender=(gender)
    @gender = gender
  end

  def gender
    return @gender
  end
end

#---------------------------------------------------------------------
# Methods

def view_details
end


def add_apt(number)
  number = Apartment.new
  number.apt_name= "#{number}"
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
end


puts "Welcome to your new apartment building!"
puts "What would you like to call this building?"
print ">"
# Creating a new building
building_response = gets.chomp.downcase
building_response = Building.new
building_response.building_name = "#{building_response}"

# create a menu
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

while menu_choice > 5 
  puts "Wrong entry! Please enter a number between 1 and 5:"
  menu_choice = gets.to_i
end

case menu_choice
when 1
  viewdetails
when 2
when 3
  print "Please enter a name for the apartment(ex: 1a, 2b):"
  apt_number = gets.chomp
  add_apt(apt_number)
  building_response.add(apt_number)
  puts building_response.apts
when 4
when 5
end














