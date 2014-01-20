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

  def stats
    return { :name => @name, :price => @price, :sqft => @sqft, :beds => @beds, :baths => @baths } #, :renter => person }
  end

end


class Building

  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
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

  def stats 
    return { :name => @name, :address =>@address, :floors =>@floors, :apartment => apartment=[ ] }
  end
end


joe = Person.new("Joe", 33, "man")
bobby = Person.new("Bobby", 23, "man")
frank = Person.new("Frank", 16, "yes")
pat = Person.new("Pat", 18, "man")
jim = Person.new("Jat", 31, "woman")
gladus = Person.new("Gladus", 73, "old")
kevin = Person.new(nil,nil,nil)


puts kevin







one = Apartment.new( 1, "$1,000.00", 200, 3, 1)
two = Apartment.new( 2, "$300.00", 1900, 4, 2)
three = Apartment.new( 3, "$7000.00", 300, 6, 2)
four = Apartment.new( 4, "$400.00", 700, 3, 3)
five = Apartment.new( 5, "$13,000.00", 800, 6, 2)
six = Apartment.new( 6, "$100.00", 400, 2, 1)

puts `clear`
puts "Hello! Please tell me the name you want to call your building."
building = gets.chomp
puts "Now Tell me its address please!"
address = gets.chomp
puts "How many floors is this building?"
floors = gets.chomp

our_building = Building.new(building, address, floors)

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
  
  puts `clear`
  puts "The building's name is #{our_building.name}, it's adress is #{our_building.address} and has #{our_building.floors} floors."



when "A"

  puts `clear`
  puts "Please tell me the apartment number."
  a_number = gets.chomp
  puts "How much does the apartment cost per month?"
  a_price = gets.chomp
  puts "How many square feet is the apartment?"
  a_sqft = gets.chomp
  puts "How many beds does the apartment have?"
  a_beds = gets.chomp
  puts "How many baths does the apartment have?"
  a_baths = gets.chomp
  
  new_apartment = Apartment.new(a_number,a_price,a_sqft,a_beds,a_baths)
  apt_collection = our_building.stats
  apt_collection[:apartment].push(new_apartment.stats)
  puts apt_collection

  puts "you just made #{new_apartment.stats}"



when "T"

  puts `clear`
  puts "What is the tenant's name?"
  t_name = gets.chomp
  puts "What is the tenant's age?"
  t_age = gets.chomp
  puts "What is the tenant's gender?"
  t_gender = gets.chomp

  new_tenant = Person.new(t_name, t_age, t_gender)

  puts `clear`
  puts "Your new #{new_tenant.age} year old #{new_tenant.gender} tenant, #{new_tenant.name}, has been added to the database."
  puts
  puts "Now, where do you want this person to live?"

  tenant_location = gets.chomp

  # I STILL NEED TO FIGURE OUT HOW TO ADD THAT PERSON TO THAT SPECIFIC APPARTMENT.....
  # ALSO, ONLY ONE TENANT CAN LIVE IN AN APARTMENT



when "D"
  puts `clear`
  puts "Here is a list of all appartments in the facility:"
  puts "--------------------------------------"
  print 
  puts "Apt 1A is 750 sqft and has 1 bed and 1 bath. It costs $2500 a month"
  puts "#{new_tenant.name} lives in Apt ##{new_apartment.name}."





when "Q"



else
  puts "Sorry That isn't a valid option!"


end



