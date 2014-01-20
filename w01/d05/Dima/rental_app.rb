class Person
  def initialize(renter_name, age, gender)
    @renter_name = renter_name
    @age = age
    @gender = gender
  end

  def renter_name
    @renter_name
  end

  def age
    @age
  end

  def gender
    @gender
  end

  def person_details
    "The tenant's name is #{self.renter_name} and he/she is #{self.age} years old #{self.gender} \n \n"
  end
end


class Apartment
  def initialize(apt_name, price, sqft, num_beds, num_baths, renter=nil)
    @apt_name = apt_name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renter = renter
  end

  def apt_name
    @apt_name
  end


  def price
    @price
  end


  def sqft
    @sqft
  end


  def num_beds
    @num_beds
  end


  def num_baths
    @num_baths
  end

  def renter
    @renter
  end

  def apt_info
    "We've just built an apt #{self.apt_name} that is #{self.sqft} square feet
    , it has #{self.num_baths} bathrooms and #{self.num_beds} bedrooms, and it costs
    #{self.price} dollars. \n \n"
  end 
end


class Building
  def initialize(bld_name, bld_address, bld_floors)
    @bld_name = bld_name
    @bld_address = bld_address
    @bld_floors = bld_floors
    @apts = []
  end

  def bld_name
    @bld_name
  end

  def bld_address
    @bld_address
  end

  def bld_floors
    @bld_floors
  end

  def apts
    @apts
  end

  def bld_info
    puts "The building name is: #{self.bld_name}.
    The building address is #{self.bld_address}.
    The building has #{self.bld_floors} floors."
    if @apts.length > 0
      "The building has #{@apts.length} apartments \n \n"
    else
      puts self.empty_array
    end
  end

  def add_apt(apt)
    self.apts << apt
  end

  def apt_list
    if @apts.length > 0
      puts "There are #{@apts.length} now"
      @apts.each {|i| puts "#{i.apt_name}, it's area is #{i.sqft} sq.ft., it has #{i.num_baths} bathrooms, it has #{i.num_beds}
      bedrooms and it costs $#{i.price} per month. \n \n"}
# Have to make another method def avail_apt, to be able to show them for new tenant, and in here.
# Separate empty apt and occupied
    else
  puts self.empty_array
    end
  end

  def empty_array
    "Your building doesn't have apartments yet, please build add one \n \n"
  end

  def quit
    puts "Good bye!"
  end

  def menu
    puts "Here are the operations that are available for you(please enter
      a letter in parenthesis: "
    puts "* View building (d)etails"
    puts "* Add an (a)partment to the building"
    puts "* Add a (t)enant"
    puts "* List the apartment directory for the bui(l)ding"
    puts "* (q)uit \n \n"
    option = gets.chomp

    case option
    when "d"
      puts ""
      puts self.bld_info
    when "a"
      puts "Please enter apartment name: "
      apt_name = gets.chomp
      puts "Please enter monthly price for rent: "
      price = gets.chomp
      puts "Please enter the living area for this apartment: "
      sqft = gets.chomp
      puts "Please enter the number of bedrooms this apartment will have"
      num_beds = gets.chomp
      puts "Please enter the amount of bathrooms for this apartment"
      num_baths = gets.chomp
      apt1 = Apartment.new(apt_name, price, sqft, num_beds, num_baths)
      self.add_apt(apt1)
      puts apt1.apt_info
    when "t"
      puts "You're about to throw another inmate in your dirty cell. Yay!"
      puts "Please add his/her bloody name: "
      renter_name = gets.chomp
      puts "Please tell me how many years she/he's been surviving on this planet?"
      age = gets.chomp
      puts "So and well, yes :) what is this creature's gender?"
      gender = gets.chomp
      person1 = Person.new(renter_name, age, gender)
      puts person1.person_details
      puts "Where would you like to live Mr/Ms #{person1.renter_name}?"
      puts "Right now we have these apartments available"
      self.apt_list
      # Have to create something like that apt => [name, price, sqft, bedrms, bathrms, renter => [name, age, gender]]
      # Let the person choose apt and add him there.
      when "l"
        self.apt_list
      when "q"
        self.quit
      else
        puts ""
        puts "Please enter letters: d, a, t, l or q \n \n"
    end
    return option
  end
end


# Initializes the building
puts "Welcome to Rent-Fest 2014"
puts "What is your building called?"
bld_name = gets.chomp

puts "What is your building's address?"
bld_address = gets.chomp

puts "How many floors is your building?"
bld_floors = gets.chomp

puts "Great, you've just instantiated your new building."
building = Building.new(bld_name, bld_address, bld_floors)
building.menu

option = nil
while option != "q"
  option = building.menu
end

####### ASSOCIATION OF PEOPLE AND APTS LEFT and Bonus !!!! #######