#PERSON CLASS

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
    return {:name => @name, :age => @age, :gender => @gender}
  end
end

#PERSON DATA

joe = Person.new("Joe", 33, "dude")
jan = Person.new("Jan", 24, "female")
jill = Person.new("Jill", 30, "girl")
james = Person.new("James", 19, "man-child")
jack = Person.new("Jack", 23, "man")
jess = Person.new("Jess", 45, "dude")
john = Person.new("John", 52, "male")

#APARTMENT CLASS

class Apartment
  def initialize(number, price, sqft, beds, baths)
    @number = number
    @price = price
    @sqft = sqft
    @beds = beds
    @baths = baths
  end
  def number
    return @number
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
  def tenant=(tenant)
    @tenant = tenant
  end
  def tenant
    return @tenant
  end
  def stats 
    return {:number => @number, :price => @price, :sqft => @sqft, :beds => @beds, :baths => @baths, :ten => @ten}
  end

end

#APT DATA

one = Apartment.new(1, "$1,340", 900, 3, 2)
two = Apartment.new(2, "$2,340", 900, 1, 1)
three = Apartment.new(3, "$1,500", 900, 1, 6)
four = Apartment.new(4, "$3,233", 900, 5, 2)
five = Apartment.new(5, "$1,340", 900, 3, 1)
six = Apartment.new(6, "$1,340", 900, 2, 1)

puts one.stats
puts two.stats
puts three.stats
puts four.stats
puts five.stats
puts six.stats


#BUILDING CLASS

class Building
  def initialize
    @building = []
  end
  def setup(name, address, floors)
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
  def add_apartment(apartment)
    @building.push(apartment)
  end
  def stats
    return @building.each {|x| x}
  end
  def apt_list
    @apt_list = @building.map {|x| x[:number]}
    return @apt_list.join(", ")
  end
  def count
    return @building.count
  end
end

#START APP-------------------------
#GET BUILDING INFO

puts "What is the name of your building?"
name = gets.chomp
puts "What is the address of your building?"
address = gets.chomp
puts "How many floors does this building have?"
floors = gets.chomp

building1 = Building.new

building1.setup(name, address, floors)

puts "Your building name is #{building1.name} and you are located at #{building1.address} and has #{building1.floors} floors."

#POPULATE BUILDING WITH SOME APARTMENTS
building1.add_apartment(one.stats)
building1.add_apartment(two.stats)
building1.add_apartment(three.stats)
building1.add_apartment(four.stats)
building1.add_apartment(five.stats)
building1.add_apartment(six.stats)

puts "This is your building status: #{building1.stats}"

#INTERACT WITH BUILDING

menu_option = "start" 

while menu_option != "q"

  puts "What would you like to do?"
  puts "(V)iew #{building1.name}'s details"
  puts "Add an (A)partment"
  puts "Add a (T)enant"
  puts "List the building (D)irectory"
  puts "(Q)uit"
  menu_option = gets.chomp.downcase

  case menu_option
  when "v"
    puts "The building's name is #{building1.name} and it is located at #{building1.address}. It has #{building1.floors} floors and #{building1.count} apartments."
  when "a"
    puts "What is the apartment number?" 
    puts "(Apartments #{building1.apt_list} already exist.)"
    a_number = gets.chomp.to_i
    puts "What is the monthly rent?"
    a_price = gets.chomp
    puts "How many square feet is the apartment?"
    a_sqft = gets.chomp
    puts  "How many bedrooms does it have?"
    a_beds = gets.chomp
    puts "How many bathrooms does the apartment have?"
    a_baths = gets.chomp
    new_apt = Apartment.new(a_number, a_price, a_sqft, a_beds, a_baths)
    building1.add_apartment(new_apt.stats)
    puts "Apartment #{new_apt.number} has been added to #{building1.name}!"

  when "t"
    puts "What is the tenant's name?"
    t_name = gets.chomp
    puts "What is the tenant's age?"
    t_age = gets.chomp
    puts "What is the tenant's gender?"
    t_gender = gets.chomp
    new_ten = Person.new(t_name, t_age, t_gender)
    puts "You just made #{new_ten.name}!"
    puts "Here is a list of available apartments:"

  when "d"
    #code
  end
end    

puts "Thank you for visiting!"







