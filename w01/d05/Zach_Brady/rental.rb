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
    en
    def renter()
      return @renter
    end

  end

# DEFINE CLASS BUILDING
  class Building
    def initialize(name, address, num_floors, apartments)

      #def name=(name) What is the meaning of this syntax? 
        @name=name
      #end
      #def address=(address)
        @address=address
      #end
      #def num_floors=(num_floors)
        @num_floors = num_floors
      #end
      #def apartments=(apartments)
        @apartments=apartments
      #end
    end
      
    def get_name()
      return @name
    end
    def get_address()
      return @address
    end
    def get_num_floors()
      return @num_floors
    end
    def get_apartments()
      return @apartments
    end

  end

  def apartment_directory
    # print the apartment directory
  end

# INSTATIATE BUILDING AT START OF PROGRAM
the_building = Building.new "Palmetto", "146 Palmetto Street, Brooklyn, NY 11221", 3, 3

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
    when "quit"
      exit
    when "add an apartment to the building"
      # Add an apartment to the building
    when "add a tenant"
      # Add a tenant
    when "list the apartment directory for the building"
      puts the_building.get_name()
    else
      puts "Come again? "
    end
end


