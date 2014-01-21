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
  def initialize(r_name, r_age, r_gender)
    @person = []
    @r_name = r_name
    @r_age = r_age
    @r_gender = r_gender
  end
  def r_name
    return @r_name
  end
  def r_age
    return @r_age
  end
  def r_gender
    return @r_gender
  end
  def person
    return @person
  end
  def add_tenant(a, b, c)
    self.person().push(a, b, c)
  end
end


class Apartment
  def initialize(apt_num, price, sqft, beds, baths, renter)
    $details = []
    h_details = {}
    @apt_num = apt_num
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
  def details
    return $details
  end
  def add_apt(a, b, c, d, e, f)
    self.details().push(a, b, c, d, e, f)
  end
  def add_to_hash(a, b, c, d, e, f)
    self.h_details()
  end
end


class Building
  def initialize(name, address, num_floors, apartments)
      @b_apts = []
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
  def b_apts
    return @b_apts
  end
  def add_apt_to_build(a)
    self.b_apts().push(a)
  end
 def add_person_to_apt(a)
    self.b_apts().push(a)
  end
  def lists_b_apts()
    if b_apts.each {|(apt, price, sqft, bed, bath, renter)| "#{renter}" == "" }
      b_apts.each {|(apt, price, sqft, bed, bath, renter)| 
        puts  "Apt #{apt} is #{sqft} sqft and has #{bed} bed(s) and #{bath} bath(s). It costs $#{price} a month."}
     else
       b_apts.each {|(apt, price, sqft, bed, bath, renter)| 
        puts  "#{renter} lives in Apt #{apt}"}
      end
   end
end



one = Building.new("Liberty Green", "300 North End Avenue", 20, 100)

menu = nil
while menu != "q"
puts "Select: (V)iew building details, (A)dd an apt to the building, \n(N)ew Tenant, (L)ist directory or (Q)uit"
menu = gets.chomp.downcase
case menu
 
 #************Building Info**************
  when "v"
    puts
    puts "*********************************************************"
    puts "Welcome to #{one.name} located at #{one.address}. \nThis building has #{one.num_floors} floors and #{one.apartments} apts!"
    puts "*********************************************************" 
    puts 
  
#****************New Apartment***************
  when "a"
    puts "Enter Apt number:"
    apt_num = gets.chomp
    puts "Price:"
    price = gets.chomp.to_i
    puts "Enter sqft:"
    sqft = gets.chomp.to_i
    puts "Enter number of beds:"
    beds = gets.chomp.to_i
    puts "Enter number of baths:"
    baths = gets.chomp.to_i
    puts "Renter name:"
    renter = gets.chomp
    apt = Apartment.new(@apt_num, @price, @sqft, @beds, @baths, @renter)
    apt.add_apt(apt_num, price, sqft, beds, baths, renter)
    one.add_apt_to_build($details)

#****************New Tenant****************
  when "n"
    puts "What is your name?"
    r_name = gets.chomp
    puts "What is your age?"
    r_age = gets.chomp.to_i
    puts "What is your gender?"
    r_gender = gets.chomp
    puts "What apartment do you want to live in?"
    r_apt = gets.chomp
    n_tenant = Person.new(@r_name, @r_age, @r_gender)
    n_tenant.add_tenant(r_name, r_age, r_gender)
    one.add_person_to_apt(r_name)

  #**************List Apartments*************
  when "l" 
    if one.b_apts == []
      puts
      puts "Nothing yet entered"
      puts
    else
     one.lists_b_apts
     puts
     print one.b_apts
    end

#****************Quit Program*****************        
  when "q"
    # quit
  else
    puts "ERROR!!!!! TRY AGAIN"
    puts
  end
end





