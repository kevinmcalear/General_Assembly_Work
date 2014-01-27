class Person
  def p_name=(p_name)
    @p_name = p_name
  end

  def p_name()
    return @p_name
  end
  
  def p_age=(p_age)
    @p_age = p_age
  end

  def p_age()
    return @p_age
  end

  def p_gender=(p_gender)
    @p_gender = p_gender
  end

  def p_gender()
    return @p_gender
end

class Apartment
  def initialize
    @tenants = []
  end

  
  def apt_name=(apt_name)
    @apt_name = []
  end

  sandys_house = Apartment.new()

  def apt_name()
    return @apt_name
  end

  def apt_price=(apt_price)
    @price = apt_price
  end

  def apt_price()
    return @apt_price
  end

  def sqft=(sqft)
    @sqft = sqft
  end

  def sqft()
    return @sqft
  end

  def num_beds=(num_beds)
    @num_beds = num_beds
  end

  def num_beds()
    return @num_beds
  end

 def num_baths=(num_baths)
    @num_baths = num_baths
  end

  def num_baths()
    return @num_baths
  end

 def renter=(renter)
    @renter = renter
  end

  def renter()
    return @renter
  end
end

class Building
  def bldg_name=(bldg_name)
    @bldg_name = bldg_name
  end

  def bldg_name()
    return @bldg_name
  end

  def address=(address)
    @address = address
  end

  def address()
    return @address 
  end

  def num_floors=(num_floors)
    @num_floors = num_floors
  end

  def num_floors()
    return @num_floors
  end

  def apartments=(apartments)
    @apartments = apartments
  end

  def apartments()
    return @apartments
end
end

# class ProgramStart
#   def initialize()
#     @Building = []
#   end 

eleven_fifteen = Building.new
eleven_fifteen.bldg_name=("11-15 Broadway")
eleven_fifteen.address=("11-15 Broadway Astoria, NY 11106")
eleven_fifteen.num_floors=(6)
eleven_fifteen.apartments=(65)

# puts eleven_fifteen.bldg_name()
# puts eleven_fifteen.address()
# puts eleven_fifteen.num_floors()
# puts eleven_fifteen.apartments()

 puts " What would you like to do?
           View Bulding Details (enter 'Building')
           Add an apartment to the Building (enter 'Add Apt')
           Add a tenant (enter 'Tenant')
           List the apartment directory for the building (enter 'List')
           Quit (enter 'Quit')"
  user_ans = gets.chomp

while user_ans != "Quit"
  case user_ans
    when "Building"
      puts eleven_fifteen.bldg_name()
      puts eleven_fifteen.address()
      puts eleven_fifteen.num_floors()
      puts eleven_fifteen.apartments()

    when "Add Apt"
      add_apt_input = Apartment.new
      puts "Which apartment are you looking to rent?"
      input = gets.chomp

end
     





