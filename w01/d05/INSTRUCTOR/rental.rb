#################
### Person Class
#################

class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
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

#################
### Apartment Class
#################

class Apartment
  def initialize(name, price, sqft, num_beds, num_baths)
    @name = name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
  end

  def name
    return @name
  end

  def price
    return @price
  end

  def sqft
    return @sqft
  end

  def num_beds
    return @num_beds
  end

  def num_baths
    return @num_baths
  end

  def renter
    return @renter
  end

  def renter=(renter)
    @renter = renter
  end

  def add_renter
    puts "What is the renter name?"
    name = gets.chomp
    puts "How old is the renter?"
    age = gets.chomp.to_i
    puts "What gender is the renter?"
    gender = gets.chomp
    renter = Person.new(name,age,gender)
    self.renter=(renter)
  end

  def to_s
    if renter
      return "#{name} is occupied by #{renter.name}"
    else
      return "#{name} is for rent and and costs #{price}"
    end
  end
end

#################
### Building Class
#################

class Building
  def initialize(name, address, num_floors)
    @name = name
    @address = address
    @num_floors = num_floors
    @apartments = []
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

  def apartments
    return @apartments
  end

  def add_apartment
    puts "What is the apartment name?"
    name = gets.chomp
    puts "What is the price per month?"
    price = gets.chomp.to_i
    puts "What is the number of sqft?"
    sqft = gets.chomp.to_i
    puts "How many bedrooms?"
    num_beds = gets.chomp.to_i
    puts "How many bathrooms?"
    num_baths = gets.chomp.to_i
    apartment = Apartment.new(name,price,sqft,num_beds,num_baths)
    self.apartments().push(apartment)
  end

  def to_s
    return "#{name} is located at #{address} and has #{num_floors} floors. There are #{apartments.count} apartments."
  end
end

#########################
### Method to display the menu
#########################
def menu
  puts `clear`
  puts "********Welcome to GA********"
  puts "Choose an option"
  puts "  1: View building details"
  puts "  2: Add an apartment to the building"
  puts "  3: Add a tenant"
  puts "  4: List the apartment directory for the building"
  puts "  5: Quit"
  response = gets.chomp
  return response
end

#################
### Seed Some Data
#################
building = Building.new("General Assembly","10 E 21st St",4)
apartment_1A = Apartment.new("1A",3000,800,1,1)
apartment_1B = Apartment.new("1B",2500,600,1,1)
apartment_1C = Apartment.new("1C",4000,1200,2,2)
building.apartments << apartment_1A
building.apartments << apartment_1B
building.apartments << apartment_1C
katniss = Person.new("Katniss", 16, "F" )
apartment_1A.renter=(katniss)
peeta = Person.new("Peeta", 16, "M" )
apartment_1C.renter=(peeta)


#################
### Main Program
#################

menu_choice = menu

while menu_choice != "5"
  case menu_choice
  when "1"
    puts building
  when "2"
    building.add_apartment
  when "3"
    puts "Which apartment would you like to rent?"

    # Print out the unoccupied apartments
    building.apartments.each do |apartment|
      if !apartment.renter
        puts apartment
      end
    end
    apartment_name = gets.chomp

    # Find the apartment object associated with the apartment entered
    apartment = building.apartments.find do |apartment|
      apartment.name == apartment_name
    end

    # Add a new renter to that apartment
    apartment.add_renter
  when "4"
    building.apartments.each do |apartment|
      puts apartment
    end
  else
    puts "That wasn't an option!"
  end
  puts "Press enter to continue"  
  gets
  menu_choice = menu
end