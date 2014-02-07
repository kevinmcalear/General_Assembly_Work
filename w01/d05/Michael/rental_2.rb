##Creating the Data Structures
persons = [{:name=>"Michael" , :age=>20,:gender=>"M"}]
apartments = [{:name=>"Party Room" , :price=>1000 , :sqft=>500, :num_beds=>3, :num_baths=>2, :renter=>["Michael","Sally"] } ]
buildings = [{:name=>"Roswell", :address=>"100 Broad", :num_floors=>4, :apartments=>["Party Room"] } ]

##Create new file with data structures to store

##Creating the Classes
class Person
  def initialize(name,age,gender)
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

  def retrieve_person(name,person_list = persons)
    current_person = person_list.select do |name|
      persons[:name] == name
   end
  end
  def save_person
    person =
      (:name = @name,
       :age = @age,
       :gender = @gender)
    person_list << person
  
  end
end

#test_person
bill = Person.new("bill",15,"m")
puts bill.name
puts bill.age
puts bill.gender
# bill.save_person

# class Apartment
#   def initialize(name,price,sqft,num_beds,num_baths)
#     @name = name
#     @price = price
#     @sqft = sqft
#     @num_beds = num_beds
#     @num_baths = num_baths
#   end
#   # def assign_tenant (person)
#   #   puts "Please select a tenant to add"
#   #   @renter = person
#   # end
#   def name
#     @name
#   end
#   def price
#     @price
#   end
#   def sqft
#     @sqft
#   end
#   def num_beds
#     @num_beds
#   end
#   def num_baths
#     @num_baths
#   end
#   def renter
#     @renter
#   end 
#   def save_apartment
#   end
#   def retrieve_apartment
#   end
# end

# #test_apartment
# penthouse = Apartment.new("penthouse",100,200,2,3)
# puts penthouse.name

# class Building
#   def initialize(name,address,num_floors)
#     @name = name
#     @address = address
#     @num_floors = num_floors
#   end 
#   def name
#     return @name
#   end
#   def address
#     return @address
#   end
#   def num_floors
#     return @num_floors
#   end
#   def save_building
#   end
#   def retrieve_building
#   end
# end

# #test_building
# roswell = Building.new("Roswell","100 Broad",3)
# puts roswell.name


# ##Program Start
# program = 1
# while program > 0
# puts "Welcome to the Building Software.  What would you like to do?"
# puts "(1): View Building Details"
# puts "(2): View an apartment to the building"
# puts "(3): Add a tenant"
# puts "(4): List the apartment directory for the building"
# puts "(5): Quit"

