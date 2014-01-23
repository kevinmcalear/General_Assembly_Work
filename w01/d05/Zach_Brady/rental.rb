# DEFINE CLASS PERSON
class Person
  # SETTERS
  def initialize(name, age, gender)
  #def name=(name)
    @name = name
  #end
  #def age=(age)
    @age=age
  #end
  #def gender=(gender)
    @gender = gender
  #end
  end

  # GETTERS
  def name()
    return @name
  end
  def age()
    return @age
  end
  def gender()
    return @gender
  end

end

# DEFINE CLASS APARTMENT
class Apartment 
  def initialize(name, price, sqft, num_beds, num_baths, renter)
  # SETTER METHODS
  # def name=(name)
    @name=name
  # end
  # def price=(price)
    @price=price
  # end
  # def sqft=(sqft)
    @sqft = sqft
  # end
  # def num_beds=(num_beds)
    @num_beds=num_beds
  # end
  # def num_baths=(num_baths)
    @num_baths=num_baths
  # end
  # def renter=(renter)
    @renter=renter
  # end
  end

  # GETTER METHODS
  def name()
    return @name
  end
  def price()
    return @price
  end
  def sqft()
    return @sqft
  end
  def num_beds()
    return @num_beds
  end
  def num_baths()
    return @num_baths
  end
  def renter()
    return @renter
  end

end

# DEFINE CLASS BUILDING
class Building
  def initialize(name, address, num_floors, apartments)
    #def name=(name) What is the meaning of this syntax? 
    # SETTER METHODS
      @name=name
    #end
    #def address=(address)
      @address=address
    #end
    #def num_floors=(num_floors)
      @num_floors = num_floors
    #end
    #def apartments=(apartments)
      @apartments=apartments # somewhere or somehow I need to be pluggin in an empty array here
    #end
  end
    
  def name()
    return @name
  end
  def address()
    return @address
  end
  def num_floors()
    return @num_floors
  end
  def apartments()
    return @apartments
  end

end

# INSTANTIATE TENANTS; CREATE ARRAY OF TENANTS FOR EACH FLOOR?
# need to make the tenant and apartment arrays dynamic 

# FLOOR 3 TENANTS
brach = Person.new("Zach", 24, "male") 
sean = Person.new("Sean", 24, "male")
oliver = Person.new("Oliver", 24, "male")
nick = Person.new("Nick Ryan", 24, "male")
apt3_tenants = []
apt3_tenants = [brach, sean, oliver, nick]

# FLOOR 2 TENANTS
george = Person.new("George Bush", 67, "male") 
barack = Person.new("Barack Obama", 52, "male")
bill = Person.new("Bill Clinton", 67, "male")
jimmy = Person.new("Jimmy Carter", 89, "male")
apt2_tenants = []
apt2_tenants = [george, barack, bill, jimmy]

# FLOOR 1 TENANTS
lennon = Person.new("John", 40, "male") 
mccartney = Person.new("Paul", 71, "male")
harrison = Person.new("George", 58, "male")
starr = Person.new("Ringo", 73, "male")
apt1_tenants = []
apt1_tenants = [lennon, mccartney, harrison, starr]

# INSTANTIATE APARTMENTS
apt3 = Apartment.new("Apartment 3", 2500, 1500, 4, 2, apt3_tenants)
apt2 = Apartment.new("Apartment 2", 2500, 1500, 4, 2, apt2_tenants)
apt1 = Apartment.new("Apartment 1", 2500, 1500, 4, 2, apt1_tenants)

# INSTATIATE BUILDING AT START OF PROGRAM
# the_building needs to contain an array of the apartments, i.e. the last variable is not an integer
the_building = Building.new("Palmetto", "146 Palmetto Street, Brooklyn, NY 11221", 3, [apt1, apt2, apt3])

# the_building.apartments[0].renter[0].name


# The structure below works but I can't help but feel there is a far more efficient way to do this using ennumerators and hashes -- ask for help

# print out a formatted table
def list_directory(building)
  names_and_apt = {}
  i = 0
  while i < building.apartments().length
    e = 0
    while e < building.apartments[i].renter().length 
      names_and_apt[building.apartments[i].renter[e].name] = building.apartments[i].name
      e += 1
    end
    i += 1
  end
  puts names_and_apt.sort
end



# PRESENT USER WITH MENU
while true
  puts
  puts "MENU: "
  puts "  View building details"
  puts "  Add an apartment to the building"
  puts "  Add a tenant"
  puts "  List the apartment directory for the building"
  puts "  Quit"
  puts

  answer = gets.chomp.downcase

  case answer
    when "view building details"
      puts "#{the_building.name} is located at #{the_building.address}. It has #{the_building.apartments.length} apartments and #{the_building.num_floors} floors. "
    when "add an apartment to the building"
      # Apartments are numbered so variable name should change based on present number of apartments 
      new_apt= Apartment.new("Apartment #{(the_building.apartments().length + 1).to_s}", 2800, 1500, 4, 2, [] )
      puts "#{new_apt.name} created. "
    when "add a tenant"
      print "Name: "
      new_name = gets.chomp
      print "Age: "
      new_age = gets.chomp.to_i
      print "Gender: "
      new_gender = gets.chomp.downcase
      new_tenant = Person.new(new_name, new_age, new_gender)
      puts "Apartment #: "
      apt_name = "Apartment " + gets.chomp
      i = 0
      while i < the_building.apartments().length
        if the_building.apartments[i].name == apt_name
          the_building.apartments[i].renter << new_tenant
          puts the_building.apartments[i].renter[-1].name
        end
        i += 1
      end
    when "list the apartment directory for the building"
      puts
      list_directory(the_building)
    when "quit"
      exit
    else
      puts "Come again? "
  end
end



