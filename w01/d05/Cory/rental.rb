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
  def add_tenant
    return  {:name => @name, :age => @age, :gender => @gender}
  end
end


class Apartment
  def initialize(name, price, sqft, beds, baths, renter)
    @name = name
    @price = price
    @sqft = sqft
    @beds = beds
    @baths = baths
    @renter = renter
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
  def beds
    return @beds
  end
  def baths
    return @baths
  end
  def renter
    return @renter
  end
end


class Building
  def initialize(name, address, num_floors, apartments)
      @name = name
      @address = address
      @num_floors = num_floors
      @apartments = apartments
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
end




menu = nil
while menu != "q"
puts "Select: (V)iew building detials, (A)dd an apt to the building, (N)ew Tenant, (L)ist directory or (Q)uit"
menu = gets.chomp.downcase
case menu
  when "v"
    puts "needs to do something"
  when "a"
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

    #puts "Renter name:"
    #renter = gets.chomp
  when "n"
    puts "What is your name?"
    r_name = gets.chomp
    puts "What is your age?"
    r_age = gets.chomp.to_i
    puts "What is your gender?"
    r_gender = gets.chomp
    puts "What apartment do you want to live in?"
    r_apt = gets.chomp

  when "l"
    puts "needs to do something"
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




