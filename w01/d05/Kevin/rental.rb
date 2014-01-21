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

  def stats
    return { :name =>@name, :age => @age, :gender => @gender }
  end
end


class Apartment
  def initialize( name, price, sqft, beds, baths)
    @name = name
    @price = price
    @sqft = sqft
    @beds = beds
    @baths = baths
    @renters = []
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

  def renters
    return @renters
  end

  def stats
    @stats = { :name => @name, :price => @price, :sqft => @sqft, :beds => @beds, :baths => @baths, :renters => @renters }
    return @stats
  end

  def add_renter(person)
    @person = person
    @renters << @person 
  end
end


class Building
  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
  end

  def name
    return @name
  end

  def address
    return @address
  end
  def floors
    return @floors
  end

  def apartments
    return @apartments
  end

  def stats 
   @stats = { :name => @name, :address => @address, :floors => @floors, :apartments => @apartments }
   return @stats
 end

 def add_apt(apt)
  @apt = apt
  @apartments << @apt
end

def directory
    @apartments.each do |apartment|
      if apartment[:renters].empty?
        puts
        puts "*AVAILABLE*"
        puts "Apartment Number #{apartment[:name]} is #{apartment[:sqft]} square feet and has #{apartment[:beds]} bed(s) and #{apartment[:baths]} bath(s). It costs $#{apartment[:price]} a month."
        puts "-------------------------------------------------------"
      else
        puts "#{apartment[:renters][0][:name]} lives in Apartment Number #{apartment[:name]}"
      end
    end
  end

  def add_renter(apartment, person)
    @get_apartment = @apartments.index { | apt | apt[:name] == apartment}
    @apartments[@get_apartment][:renters] << person 
  end
end

# MAKING STOCK PEOPLE
joe = Person.new("Joe", 33, "man")
bobby = Person.new("Bobby", 23, "man")
frank = Person.new("Frank", 16, "yes")
pat = Person.new("Pat", 18, "man")
jim = Person.new("Jat", 31, "woman")
gladus = Person.new("Gladus", 73, "old")




# MAKING STOCK APPARTMENTS
one = Apartment.new( 1, "1,000.00", 200, 3, 1)
two = Apartment.new( 2, "300.00", 1900, 4, 2)
three = Apartment.new( 3, "7000.00", 300, 6, 2)
four = Apartment.new( 4, "400.00", 700, 3, 3)
five = Apartment.new( 5, "13,000.00", 800, 6, 2)
six = Apartment.new( 6, "100.00", 400, 2, 1)
seven = Apartment.new( 7, "100.00", 400, 2, 1)
eight = Apartment.new( 8, "100.00", 400, 2, 1)
nine = Apartment.new( 9, "100.00", 400, 2, 1)


# ADDING STOCK PEOPLE TO APARTMENTS
one.add_renter(joe.stats)
two.add_renter(bobby.stats)
three.add_renter(frank.stats)
four.add_renter(pat.stats)
five.add_renter(jim.stats)
six.add_renter(gladus.stats)

# ASKING THE USER TO CREATE THE BULIDING
puts `clear`
puts "Hello! Please tell me the name you want to call your building."
building = gets.chomp
puts "Now Tell me its address please!"
address = gets.chomp
puts "How many floors is this building?"
floors = gets.chomp

our_building = Building.new(building, address, floors)

# ADDING STOCKAPARTMENTS TO THE BUILDING
our_building.add_apt(one.stats)
our_building.add_apt(two.stats)
our_building.add_apt(three.stats)
our_building.add_apt(four.stats)
our_building.add_apt(five.stats)
our_building.add_apt(six.stats)
our_building.add_apt(seven.stats)
our_building.add_apt(eight.stats)
our_building.add_apt(nine.stats)


# STARTING THE ACTUAL PROGRAM
menu_option = nil

while menu_option != "Q"

  puts `clear`
  puts "Your building, #{our_building.name}, is located at #{our_building.address}."
  puts
  puts "THE MENU"
  puts "------------------------------"
  puts "To view the building's detials press ( B )"
  puts "To add an appartment press ( A )"
  puts "To add a tenant press ( T )"
  puts "To list the apartment directory for the building press ( D )"
  puts "If you're finished with this app press ( Q )"
  menu_option = gets.chomp.upcase


  case menu_option

  when "B"
    # THIS TELLS YOU THE BUILDING NAME
    puts `clear`
    puts "The building's name is #{our_building.name}, it's adress is #{our_building.address} and has #{our_building.floors} floors."
    puts
    puts "------------------------------"
    puts "Press Anything To Go Back Or ( Q ) To Quit."
    menu_option = gets.chomp.upcase

  when "A"

      # THIS GETS THE INFO NEEDED TO MAKE A NEW APPARTMENT
      puts `clear`
      puts "Please tell me the apartment number."
      a_number = gets.chomp.to_i
      puts "How much does the apartment cost per month?"
      print "$"
      a_price = gets.chomp
      puts "How many square feet is the apartment?"
      a_sqft = gets.chomp
      puts "How many beds does the apartment have?"
      a_beds = gets.chomp
      puts "How many baths does the apartment have?"
      a_baths = gets.chomp

      # THIS MAKES THE NEW APPARTMENT
      new_apartment = Apartment.new(a_number, a_price, a_sqft, a_beds, a_baths)
      # THIS ADDS THE NEW APPARTMENT TO THE BUILDING
      our_building.add_apt(new_apartment.stats)

      # THIS IS THE USERFEEDBACK
      puts `clear`
      puts "Thanks for adding Apartment Number #{a_number} to the complex!"
      puts
      puts "------------------------------"
      puts "Press Anything To Go Back Or ( Q ) To Quit."
      menu_option = gets.chomp.upcase

    when "T"
      # THIS GETS THE INFO NEEDED TO MAKE A NEW TENANT & ADD THEM TO AN APARTMENT
      puts `clear`
      puts "What is the tenant's name?"
      t_name = gets.chomp
      puts "What is the tenant's age?"
      t_age = gets.chomp
      puts "What is the tenant's gender?"
      print ""
      t_gender = gets.chomp
      puts "Now, where do you want this person to live?"
      print "Apartment Number :"
      tenant_location = gets.chomp.to_i
      # THIS MAKES THE NEW RENTER
      new_tenant = Person.new(t_name, t_age, t_gender)
      # THIS ADDS THE NEW RENTER TO THE APARTMENT
      our_building.add_renter(tenant_location, new_tenant.stats)
      
      # THIS IS THE USER FEEDBACK
      puts `clear`
      puts "Your new #{new_tenant.age} year old #{new_tenant.gender} tenant, #{new_tenant.name}, has been added to the database. and to your Apartment Number #{tenant_location}."
      puts
      puts
      puts "------------------------------"
      puts "Press Anything To Go Back Or ( Q ) To Quit."
      menu_option = gets.chomp.upcase
      
    when "D"
      puts `clear`
      puts "Here is a list of all appartments in the facility:"
      puts "--------------------------------------"
      our_building.directory
      puts
      puts "------------------------------"
      puts "Press Anything To Go Back Or ( Q ) To Quit."
      menu_option = gets.chomp.upcase

    when "Q"

    else
      puts `clear`
      puts "Sorry That isn't a valid option!"
      puts
      puts "------------------------------"
      puts "Press Anything To Go Back Or ( Q ) To Quit."
      menu_option = gets.chomp.upcase
    end
  end

  puts `clear`
  puts "**********************************"
  puts "Have A Great Day! Exiting Now! :)"