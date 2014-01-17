# #Rental App

# ###Prompt:
# You will be creating an app that models the rental process. What types of objects might you have in an app that manages rentals? We are going to have a building, apartments and people.

# ### Part 1 - Creating the classes

# Create each of the classes for Person, Apartment, and Building

# A person should have the following attributes:

# * name
# * age
# * gender

# An apartment should have the following attributes:

# * name
# * price
# * sqft
# * num_beds
# * num_baths
# * renter (the person living in the apartment)

# A building should have the following attributes:

# * name
# * address
# * num_floors
# * apartments

# You should determine what methods & behavior are needed for each of your objects. It may help to look at the functionality required below.

# ### Part 2 - Creating the program functionality & menu display

# * The program should instantiate a new building when it starts
# * The program should display the following menu options
#   * View building details
#   * Add an apartment to the building
#   * Add a tenant
#   * List the apartment directory for the building
#   * Quit
# * The program should return to the menu until the user quits

# #### View Building details
# * Tell the user the name, address, number of floors and number of apartments for the building

# #### Adding an apartment to the building
# * Make sure to get the appropriate input from the user to create your apartment
# * Add the new apartment to the building

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

# ### Bonus
# * Increase the number of people that can live in each apartment to up to the number of bedrooms in the apartment. Adjust the rest of your program accordingly.
# * Add functionality so that a tenant can leave the building.



class Person
  def initialize()
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
  def add_tenant
    return person_hash = {:name => @name, :age => @age, :gender => @gender}
  end
end

#cory = Person.new
#cory.name ="Cory"
#puts cory.name

# * name
# * price
# * sqft
# * num_beds
# * num_baths
# * renter (the person living in the apartment)

class Apartment
  def initialize()
    @apartment = []
  end
  #def add_apt(apt)
    #self.apartment().push(apartment)
  #end
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
end

# * name
# * address
# * num_floors
# * apartments

class Building
def initialize()
    @building = []
end
def add_building(build)
  self.building().push(build)
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
def apartments=(apartments)
  @apartments = apartments
end
def apartments
  return @apartments
end
end

menu = nil
while menu != "q"
puts "Select: (V)iew building detials, (A)dd an apt to the building, (N)ew Tenant, (L)ist directory or (Q)uit"
menu = gets.chomp.downcase
case menu
  when "v"
    puts "something"
  when "a"
    build = Building.new
    puts "Enter Apt number name:"
    name = gets.chomp
    puts "Price:"
    price = gets.chomp.to_f
    puts "Enter sqft:"
    sqft = gets.chomp
    puts "Enter number of bed:"
    beds = gets.chomp.to_i
    puts "Enter number of baths:"
    baths = gets.chomp.to_i
    build.add_building(build)

    #puts "Renter name:"
    #renter = gets.chomp
  when "n"
    tenant = Person.new
    puts "What is your name?"
    r_name = gets.chomp
    puts "What is your age?"
    r_age = gets.chomp.to_i
    puts "What is your gender?"
    r_gender = gets.chomp
    puts "What apartment do you want to live in?"
    r_apt = gets.chomp
    tenant.add_tenant()

  when "l"
    # * List all of the apartments
    # * If the apartment is unoccupied(no renters) you should say something like:
    #   `Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month`
    # * If the apartment is occupied by a tenant, you should say something like:
    #   `Jeff lives in Apt 1A`    
  when "q"
    # quit
  else
    puts "ERROR!!!!! TRY AGAIN"
end
end

puts tenant.name
puts tenant.add_tenant



