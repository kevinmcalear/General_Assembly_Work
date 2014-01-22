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

joe = Person.new("Joe", 33, "male")
jan = Person.new("Jan", 24, "female")
jill = Person.new("Jill", 30, "female")
james = Person.new("James", 19, "man-child")
jack = Person.new("Jack", 23, "male")
jess = Person.new("Jess", 45, "male")
joann = Person.new("Joann", 52, "female")

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
  def stats 
    return {:number => @number, :price => @price, :sqft => @sqft, :beds => @beds, :baths => @baths, :tenant => []}
  end

end

#APT DATA

one = Apartment.new(1, "2340", 1500, 2, 2)
two = Apartment.new(2, "1440", 900, 1, 1.5)
three = Apartment.new(3, "1100", 621, 1, 1)
four = Apartment.new(4, "3233", 2000, 3, 3)
five = Apartment.new(5, "2140", 1200, 3, 1)
six = Apartment.new(6, "2240", 1200, 2, 1)


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
  def add_person(apartment, tenant)
    @find_apt = @building.index {|x| x[:number] == apartment}
    @building[@find_apt][:tenant].push(tenant)
  end
  def is_avail?
    @avail_apts = @building.select {|x| x[:tenant].empty? || x[:tenant].length < x[:beds]}
    if @avail_apts.length > 0
      return true
    else
      return false
    end
  end
  def avail_apts
    @avail_apts = @building.select {|x| x[:tenant].empty? || x[:tenant].length < x[:beds]}
    @avail_apts.each do |apt|
      puts "Apt #{apt[:number]} is #{apt[:sqft]} square feet and has #{apt[:beds]} beds (#{(apt[:beds] - apt[:tenant].length).abs} beds free) and #{apt[:baths]} baths. It costs $#{apt[:price]} a month."
    end
  end
  def directory
    @building.each do |apt|
      if apt[:tenant].empty? || apt[:tenant].length < apt[:beds]
        puts "Apt #{apt[:number]} is #{apt[:sqft]} square feet and has #{apt[:beds]} beds (#{(apt[:beds] - apt[:tenant].length).abs} beds free) and #{apt[:baths]} baths. It costs $#{apt[:price]} a month."
      elsif (apt[:tenant].length == apt[:beds]) && (apt[:beds] == 1)
        puts "#{apt[:tenant][0][:name]} lives in Apt #{apt[:number]}."
      else
        @roomies = apt[:tenant].map {|x| x[:name]}
        puts "#{@roomies.join(", ")} live in Apt #{apt[:number]}."
      end
    end
  end
  def move_out(tenant)
    @building.each do |apartment|
      apartment[:tenant].delete_if {|apartment_tenant| apartment_tenant[:name] == tenant }
    end
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

puts "Your building name is #{building1.name}. It is located at #{building1.address} and has #{building1.floors} floors."

#POPULATE BUILDING WITH SOME APARTMENTS
building1.add_apartment(one.stats)
building1.add_apartment(two.stats)
building1.add_apartment(three.stats)
building1.add_apartment(four.stats)
building1.add_apartment(five.stats)
building1.add_apartment(six.stats)

#SHOVE SOME PEOPLE IN OUR NEW APARTMENTS
building1.add_person(3, joe.stats)
building1.add_person(4, joann.stats)
building1.add_person(4, jill.stats)
building1.add_person(1, james.stats)


#INTERACT WITH BUILDING

menu_option = "start" 

while menu_option != "q"

  puts "What would you like to do?"
  puts "(V)iew #{building1.name}'s details"
  puts "Add an (A)partment"
  puts "Add a (T)enant"
  puts "(M)ove out"
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
    print "$"
    a_price = gets.chomp
    puts "How many square feet is the apartment?"
    a_sqft = gets.chomp
    puts  "How many bedrooms does it have?"
    a_beds = gets.chomp.to_i
    puts "How many bathrooms does the apartment have?"
    a_baths = gets.chomp
    new_apt = Apartment.new(a_number, a_price, a_sqft, a_beds, a_baths)
    building1.add_apartment(new_apt.stats)
    puts "Apartment #{new_apt.number} has been added to #{building1.name}!"

  when "t"
    if building1.is_avail? == true
      puts "What is the tenant's name?"
      t_name = gets.chomp
      puts "What is the tenant's age?"
      t_age = gets.chomp
      puts "What is the tenant's gender?"
      t_gender = gets.chomp
      new_tenant = Person.new(t_name, t_age, t_gender)
      puts "Welcome #{new_tenant.name}!"
      puts "Which apartment would you like to rent?"
      building1.avail_apts
      print "Apt "
      apt_choice = gets.chomp.to_i
      building1.add_person(apt_choice, new_tenant.stats)
      puts "It's all yours, #{new_tenant.name}!"
    else
      puts "Sorry, there aren't any available apartments to rent!"
    end
  when "d"
    building1.directory
  when "m"
    puts "Who is moving out? (Name must match the lease!)"
    mover = gets.chomp
    building1.move_out(mover)
    puts "Sorry to see you go!"
  end
end    

puts "Thank you for visiting!"







