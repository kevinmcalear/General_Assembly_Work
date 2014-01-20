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
    "The building name is: #{self.bld_name}.
    The building address is #{self.bld_address}.
    The building has #{self.bld_floors} floors.\n \n"
  end

  def add_apt(apt)
    self.apts << apt
  end

  def apt_list
    if @apts.length > 0
      puts "There are #{@apts.length} now"
      @apts.each {|apt| puts apt.apt_name}
      puts "\n"
    else
      puts "Your building doesn't have apartments yet, please build add one \n \n"
    end
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





# building = Building.new(bld_name, bld_address, bld_floors)
# puts building.bld_info

# puts "\n"
# person = Person.new("Dima", 26, "male")
# puts person.person_details

# apt = Apartment.new("5A", 4000, 245, 5, 6, "James")
# puts apt.apt_info