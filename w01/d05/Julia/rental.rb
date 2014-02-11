class Person
  def initialize(name, age, gender)
    @name = name
    @gender = gender
    @age = age
  end
  #name getters
  def name
    return @name
  end

  #ageg etters
  def age
    return @age
  end

  #age getters
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
  end

  #get name
  def name
    return @name
  end

  #get price
  def price
    return @price
  end

  #get sqft
  def sqft
    return @sqft
  end

  #sget num_beds
  def num_beds
    return @num_beds
  end

  #get num_baths
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

def create_tenant
  puts "What is the tenant's name?"
  tenant_name = gets.chomp
  puts "What is the tenant's age?"
  tenant_age = gets.chomp.to_i
  puts "What is the tenant's gender?"
  tenant_gender = gets.chomp
  new_tenant = Person.new(tenant_name, tenant_age, tenant_gender)
  self.new_tenant=(new_tenant)
end

def to_s
  if new_tenant
    return "#{name} is occupied by #{new_tenant.name}"
  else 
    return "#{name} is for rent and costs #{price}"
  end
end
end

class Building
  def initialize(name, address, num_floors)
    @name = name
    @address = address
    @num_floors = num_floors
    @apartments = []
  end

  #get name
  def name
    return @name
  end

  #get address
  def address
    return @address
  end

  #get num floors
  def num_floors
    return @num_floors
  end

  #get apartments
  def apartments
    return @apartments
  end

  #add apartment
  def create_apartment
    puts "What is the apartment name?"
    name = gets.chomp
    puts "What is the apartment price?"
    price = gets.chomp.to_i
    puts "What is the apartment's square footage?"
    sqft = gets.chomp.to_i
    puts "How many bedrooms does it have?"
    num_beds = gets.chomp.to_i
    puts "How many bathrooms does it have?"
    num_baths = gets.chomp.to_i
    apartment = Apartment.new(name, price, sqft, num_beds, num_baths)
    self.apartments().push(apartment)
  end


  #view_building_details
  def view_building_details
    puts "Building Name: #{self.name()} \nBuilding Address: #{self.address()} \nBNumber of Floors: #{self.num_floors()} \nNumber of Apartments: #{self.apartments()}"
  end
end

#puts create_apartment



the_post = Building.new("The Post", "1449 Massachusetts Ave. NW", 9)
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
   the_post.all_apartments().each {|obj| puts obj.name}
  elsif choice == "QUIT"
    puts "See ya later!"
  else
    puts "Ooops! Not a valid option. Please enter a valid choice."
    choice = gets.chomp.upcase
end
end
