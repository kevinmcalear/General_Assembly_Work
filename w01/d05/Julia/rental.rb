class Person
  def initialize(name, age, gender)
    @name = name
    @gender = gender
    @age = age
  end
  #name setters & getters
  def name=(name)
    @name = name
  end
  def name
    return @name
  end

  #age setters & getters
  def age=(age)
    @age = age
  end
  def age
    return @age
  end

  #age setters & getters
  def gender=(gender)
    @gender = gender
  end
  def gender
    @gender
  end
end

class Apartment
  def initialize(name, price, sqft, num_beds, num_baths)
    @name = name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    #@renter = renter
    @apartment = apartment
  end

  #set & get name
  def name=(name)
    @name = name
  end
  def name
    return @name
  end

  #set & get price
  def price=(price)
    @price = price
  end
  def price
    return @price
  end

  #set & get sqft
  def sqft=(sqft)
    @sqft = sqft
  end
  def sqft
    return @sqft
  end

  #set & get num_beds
  def num_beds
    @num_beds = num_beds
  end
  def num_beds
    return @num_beds
  end

  #set & get num_baths
  def num_baths
    @num_baths = num_baths
  end
  def num_baths
    return @num_baths
  end

  #set & get renter
  def renter=(renter)
    @renter = renter
  end
  def renter
    return @renter
  end

  #set & get apartment
   def apartment=(apartment)
    @apartment = apartment
  end
  def apartment
    return @apartment
  end
end

class Building
  def initialize(name, address, num_floors, apartments)
    @name = name
    @address = address
    @num_floors = num_floors
    @apartments = apartments
    @all_apartments = []
    @tenants = []
  end

  #set & get name
  def name=(name)
    @name = name
  end
  def name
    return @name
  end

  #set & get address
  def address=(address)
    @address = address
  end
  def address
    return @address
  end

  #set & get num floors
   def num_floors=(num_floors)
    @num_floors = num_floors
  end
  def num_floors
    return @num_floors
  end

  #set & get apartments
  def apartments=(apartments)
    @apartments = apartments
  end
  def apartments
    return @apartments
  end

  #view_building_details
  def view_building_details
    puts "Building Name: #{self.name()} \nBuilding Address: #{self.address()} \nBNumber of Floors: #{self.num_floors()} \nNumber of Apartments: #{self.apartments()}"
  end

  #add an apartment – view all apartments
  def all_apartments(apartment)
    self.all_apartments().push(apartment)
  end

  #all tenants
  def tenants(tenants)
    self.tenants().push(tenants)
  end
end

def create_apartment
  puts "What is the apartment name?"
  apartment_name = gets.chomp
  puts "What is the apartment price?"
  apartment_price = gets.chomp.to_i
  puts "What is the apartment's square footage?"
  apartment_sqft = gets.chomp.to_i
  puts "How many bedrooms does it have?"
  bedrooms = gets.chomp.to_i
  puts "How many bathrooms does it have?"
  bathrooms = gets.chomp.to_i
  puts "Who is the renter?"
  renter_name = gets.chomp
  new_apartment = Apartment.new(apartment_name, apartment_price, apartment_sqft, bedrooms, bathrooms)
end

#puts create_apartment

def create_tenant
  puts "What is the tenant's name?"
  tenant_name = gets.chomp
  puts "What is the tenant's age?"
  tenant_age = gets.chomp.to_i
  puts "What is the tenant's gender?"
  tenant_gender = gets.chomp
  new_tenant = Person.new(tenant_name, tenant_age, tenant_gender)
end

p Building
the_post = Building.new("The Post", "1449 Massachusetts Ave. NW", 9, 200)
puts "Welcome to #{the_post.name}"
puts "What would you like to do?"

def main_menu
  puts "• [VIEW] – View Building Details \n• [ADD APT] – Add an Apartment \n• [ADD TENANT] – Add a Tenant \n• [DIR] – List the Directory \n• [QUIT] – Quit"
end
puts main_menu
choice = gets.chomp.upcase
while choice != "QUIT"
  if choice == "VIEW"
    puts the_post.view_building_details
    puts "What would you like to do next?"
    puts main_menu
    choice = gets.chomp.upcase
  elsif choice == "ADD APT"
    puts create_apartment
    puts "Would you like to add another apartment? (yes/no)"
    add_apt_choice = gets.chomp.upcase
    while add_apt_choice == "YES"
      puts create_apartment
      puts "Would you like to add another apartment? (yes/no)"
      add_apt_choice = gets.chomp.upcase
    end
      puts main_menu
      choice = gets.chomp.upcase
  elsif choice == "ADD TENANT"
    puts create_tenant
    puts "Would you like to add another tenant? (yes/no)"
    add_tenant_choice = gets.chomp.upcase
    while add_tenant_choice == "YES"
      puts create_tenant
      puts "Would you like to add another tenant? (yes/no)"
      add_tenant_choice = gets.chomp.upcase
    end
    puts main_menu
    choice = gets.chomp.upcase
  elsif choice == "DIR"
   #puts the_post.all_apartments()
  elsif choice == "QUIT"
    puts "See ya later!"
  else
    puts "Ooops! Not a valid option. Please enter a valid choice."
    choice = gets.chomp.upcase
end
end
