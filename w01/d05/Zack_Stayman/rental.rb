require 'pry'
class Person
  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

  def name
    return @name
  end
end

class Building
  def initialize(name, address, floors)
    @bld_name = name
    @bld_address = address
    @bld_floors = floors
    @apartments = []
  end
  def list
    return @apartments
  end

  def bld_name
    return @bld_name
  end

  def bld_address
    return @bld_address
  end

  def bld_floors
    return @bld_floors
  end

  def apt_new(apartment)
    @apartments.push(apartment)
  end
  def apartments
    return @apartments.each do |apartment|
      puts "Apartment #{apartment.name} is #{apartment.sqft} square feet with #{apartment.beds} bedroooms and #{apartment.baths} bathrooms."
    end
  end
  def information
    return "#{self.bld_name} is located at #{self.bld_address} and is #{self.bld_floors} floors tall."
  end
  def directory
    self.list.each do |apartment|
      if apartment.resident == nil
        return "Apartment #{apartment.name} is #{apartment.sqft} square feet with #{apartment.beds} bedrooms and #{apartment.baths} bathrooms and costs $#{apartment.rent} per month."
      else
        return "#{apartment.name} is occupied by #{apartment.resident.name}."
      end
    end
  end
end

class Apartment
  def apt_rent(rent)
    @rent = rent
  end
  def rent
    return @rent
  end
  def apt_name(name)
    @name = name
  end

  def name
    return @name
  end

  def tenant(tenant)
    @tenant = tenant
  end

  def apt_sqft(apt_sqft)
    @apt_sqft = apt_sqft
  end

  def sqft
    return @apt_sqft
  end

  def apt_beds(apt_beds)
    @apt_beds = apt_beds
  end

  def beds
    return @apt_beds
  end

  def apt_baths(apt_bath)
    @apt_baths = apt_bath
  end

  def baths
    return @apt_baths
  end
  def tenant(person)
    @tenant = person
  end
  def resident
    return @tenant
  end
end

# Initializes the building

puts "Welcome to Rent-Fest 2014"
# Asks for basic information about the building 
puts "What is your building called?"
bld_name = gets.chomp

puts "What is your building's address?"
bld_address = gets.chomp

puts "How many floors is your building?"
bld_floors = gets.chomp
building = Building.new(bld_name, bld_address, bld_floors)

puts "\n"
input = nil
while input != "q"
  puts "Menu"
  puts "Press a to create a new apartment in #{building.bld_name}"
  puts "Press b to view details about #{building.bld_name}"
  puts "Press c to move someone into an apartment"
  puts "Press d to view a building directory"
  puts "Press q to quit"
  input = gets.chomp.downcase

  case input
  when "a"
  # Creates a new apartment and adds it to the building
  apt = Apartment.new

  puts "What is the apartment's name?"
  name = gets.chomp
  apt.apt_name(name)

  puts "What is the apartment's square footage?"
  sqft = gets.chomp
  apt.apt_sqft(sqft)

  puts "How many bedrooms does the apartment have?"
  apt_beds = gets.chomp
  apt.apt_beds(apt_beds)

  puts "How many bathrooms does the apartment have?"
  apt_bath = gets.chomp
  apt.apt_baths(apt_bath)

  puts "What is the monthly rent for #{name}?"
  rent = gets.chomp
  apt.apt_rent(rent)

  building.apt_new(apt)
when "b"
  # Prints information about the building
  puts building.information
when "c"
  puts "What is this person's name?"
  tenant_name = gets.chomp
  puts "How old is #{tenant_name}?"
  tenant_age = gets.chomp
  puts "Is #{tenant_name} male or female?"
  tenant_gender = gets.chomp.downcase
  while tenant_gender != ("male" || "female")
    puts "That isn't a valid gender. Is #{tenant_name} male or female?"
    tenant_gender = gets.chomp.downcase
  end
  person = Person.new(tenant_name, tenant_age, tenant_gender)
  puts "What apartment will #{tenant_name} live in?"
  residence = gets.chomp
  building.list.each do |apartment|
    if (apartment.name == residence) && (apartment.resident == nil)
      apartment.tenant(person)
    elsif (apartment.name == residence) && (apartment.resident != nil)
      puts "I'm sorry, that apartment is already occupied"
    end
  end
when "d"
  puts building.directory
when "q"
else
  puts "I'm sorry, that is not a valid command, please try again."
end
end
puts "Goodbye"


