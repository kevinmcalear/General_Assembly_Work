class Person
  def initialize()
  end

  def add_name=(add_name)
    @add_name = add_name
  end
  def add_name 
    return @add_name
  end

  def add_age=(add_age)
    @add_age = add_age
  end
  def add_age 
    return @add_age
  end

  def add_gender=(add_gender)
    @add_gender = add_gender
  end
  def add_gender
    return @add_gender
  end
end


class Apartment
  def initialize()
  end

  def apartment=(apartment)
    @apartment = apartment
  end
  def apartment 
    return @apartment
  end

  def price=(price)
    @price = price
  end
  def price
    return @price
  end

   def sqft=(sqft)
    @sqft = sqft
  end
  def sqft
    return @sqft
  end

   def num_beds=(num_beds)
    @num_beds = num_beds
  end
  def num_beds
    return @num_beds
  end

   def num_baths=(num_baths)
    @num_baths= num_baths
  end
  def num_baths
    return @num_baths
  end
end

class Building
  def initialize()
    @apartment = [ ]
  end

  def apartments
    return @apartment
  end

   def add_apartment(apartment)
    self.apartments().push(apartment)
  end

  def building_name=(building_name)
    @building_name = building_name
  end
  def building_name
    return @building_name
  end

  def building_address=(building_adress)
    @building_address = building_address
  end
  def building_address
    return @building_address
  end

    def building_floors=(building_floors)
    @building_floors = building_floors
  end
  def building_floors
    return @building_floors
  end

end


def create_apartment
  apartment = Apartment.new
  puts "What is the name of the apartment?"
  apartment_name = gets.chomp
  apartment.apartment=(apartment_name)
  puts "What is the price of the apartment?"
  price = gets.chomp.to_i
  apartment.price=(price)
  puts "What is the sqft?"
  sqft = gets.chomp.to_i
  apartment.sqft=(sqft)
  puts "What is the number of beds?"
  num_beds = gets.chomp.to_i
  apartment.num_beds
  puts "What is the number of baths?"
  num_baths = gets.chomp.to_i
  apartment.num_baths

  a_n = apartment.apartment
  a_p = apartment.price
  sqft = apartment.sqft
  num_beds = apartment.num_beds
  num_baths = apartment.num_baths

  apartment = {}
  apartment={:apartment_name => a_n}
  apartment={:price => a_p}
  apartment={:sqft => sqft}
  apartment={:num_beds => num_beds}
  apartment={:num_baths => num_baths}
end


goonsville =Building.new
goonsville.building_name=("Goonsville")
goonsville.building_address=("167 W 80th")
goonsville.building_floors=(7)
goonsville.add_apartment("Goonsville")



def menu
  puts "What would you like to do:
          (V)iew building details
          (A)dd an apartment to the building
          Add a (T)enant
          (L)ist the apartment directory for the building
          (Q)uit"
end


puts menu()
menu = gets.chomp.upcase

while menu != "Q"
case menu 
when "V"

puts "#{goonsville.building_name} is located at #{goonsville.building_address} and has #{goonsville.building_floors} floors with #{goonsville.apartments.length} apartments."

puts menu()
menu = gets.chomp.upcase

when "A"
  create_apartment()

  puts menu()
  menu = gets.chomp.upcase

when "T"
  person = Person.new
  puts "What is your name?"
  user_name = gets.chomp
  p_n = person.add_name=(user_name)
  puts "What is your age?"
  user_age = gets.chomp
  p_a = person.add_age=(user_age)
  puts "What is your gender?"
  user_gender = gets.chomp
  p_g = person.add_gender=(user_gender)
  puts "What apartment would you like?"
  user_apartment = gets.chomp

  puts menu()
  menu = gets.chomp.upcase  

  person = {}
  person={:name => p_n}
  person={:age => p_a}
  person={:gender => p_g}
  person={:apartment => user_apartment}
  

  # person={:apartment => a_n}
  # person={:price => a_p}
  # person={:sqft => a_s}
  # person={:num_beds => a_beds}
  # person={:num_baths => a_baths}
 
 when "L"
  puts person

  goonsville.apartments().each {|obj| puts obj.apartment}

  puts menu()
  menu = gets.chomp.upcase



# when "Q"
#   exit


else
  puts "Error"
end

end



  # def add_age(age)
  #   self.age().push(age)
  # end

  #  def add_age(gender)
  #   self.persons().push(gender)
  # end

  # def age
  #   return @age
  # end


# class Building
#   def initialize()
#     @buildings = []
#   end

#   def building_name=(building_name)
#     @building_name = building_name
#   end
#   def building_name
#     return @building_name
#   end

#   def building_address=(building_adress)
#     @building_adress = building_address
#   end
#   def building_address
#     return @building_address
#   end

#     def building_floors=(building_name)
#     @building_floors = building_name
#   end
#   def building_floors
#     return @building_floors
#   end

#   def add_building(apartment)
#     self.buildings().push(apartment)
#   end

#   def buildings
#     return @buildings
#   end
# end

# class Apartment
#   def initialize()
#     @apartment = []
#   end
#   def add_tenant(person)
#     self.apartments().push(person)
#   end
#   def add_apartment(name) 
#    self.apartments().push(name) 
#   end
#   def apartment_price(price, sqft)
#     self.apartments().push(price, sqft)
#   end
#   def apartment_beds
#     self.apartments().push(num_baths, num_beds)
#   end
# end


