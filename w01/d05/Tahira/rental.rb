
### HUMAN CLASS ###
class Human
#name
  def name=(name)
    @name = name
  end

  def name
    return @name
  end

#age
  def age=(age)
    @age = age
  end

  def age
    return @age
  end

#gender
  def gender=(gender)
    @gender = gender
  end

  def gender
    return @gender
  end
end 

#### APARTMENT CLASS ####
class Apartment
#apartment number
  def name=(name)
    @name = name
  end

  def name
    return @name
  end

#apartment price
  def price=(price)
    @price = price
  end

  def price
    return @price
  end

#apartment size
  def sqft=(sqft)
    @sqft = sqft
  end

  def sqft
    return @sqft
  end

#number of beds
  def beds=(beds)
    @beds = beds
  end

  def beds
    return @beds
  end

#number of baths
  def baths=(baths)
    @baths = baths
  end

  def baths
    return @baths
  end

#renter
  def initialize()
    @renters=Array.new
  end

  def add_renter(renter)
    if(@renters.count < @beds.to_i)
      @renters.push(renter)
    else
      puts "The apartment is full."
    end
  end

  def renters
    return @renters
  end

  def retrieve_renter(human)
    @renters.each {|renter| 
      if renter.name = human
        return renter
      end
    }
  end  
end
 
### CLASS BUILDING ### 
class Building
#name of building
  def initialize()
    @apartments = Array.new
    @building_name = "Fancy Building"
    @building_address = "111 Fulton"
    @building_floors = 5
    @building_apartments = 20
  end 

  def building_details()
    puts "Building Name: #{@building_name}"
    puts "Address: #{@building_address}"
    puts "Floors: #{@building_floors}"
    puts "Apartments: #{@building_apartments}"
  end

  def add_apartment(apartment)
    if(@apartments.count < @building_apartments)
      @apartments.push(apartment)
    else
      puts "The building is full."
    end
  end

  def retrieve_apartment(apartment_number)
    @apartments.each {|apartment| 
      if apartment.name == apartment_number
        return apartment
      end
    }
  end

  def list_apartments
    @apartments.each{ |apartment|
      tenants = apartment.renters
      if tenants.count == 0
        puts "Apt #{apartment.name} is #{apartment.sqft} and has #{apartment.beds} bed and #{apartment.baths} baths. It cost $#{apartment.price} / month."
      else 
        tenants = apartment.renters
        tenants.each {|tenant|
          puts "#{tenant.name} lives in #{apartment.name}."
        }
      end
    }
  end
end    

building = Building.new
answer = "V"


while(answer != "Q")
  puts "---MENU---"
  puts "Select Option"
  puts "View building details (V)"
  puts "Add an apartment to the building (A)"
  puts "Add a tenant (T)"
  puts "Remove a tenant (R)"
  puts "View directory (D)"
  puts "Quit (Q)"
  answer = gets.chomp
  case answer
  when "V"
    building.building_details()
  when "A"
    apartment = Apartment.new
    puts "What is the apartment number?"
    apartment.name = gets.chomp
    puts "What is the apartment price?"
    apartment.price = gets.chomp
    puts "How many squarefeet?"
    apartment.sqft = gets.chomp
    puts "How many bedrooms?"
    apartment.beds = gets.chomp
    puts "How many bathrooms?"
    apartment.baths = gets.chomp
    building.add_apartment(apartment)
  when "T"
    human = Human.new
    puts "What's your name?"
    human.name = gets.chomp
    puts "What's your age?"
    human.age = gets.chomp
    puts "What's your gender?"
    human.gender = gets.chomp
    puts "What apartment do you want to live in?"
    apartment_number = gets.chomp
    apartment = building.retrieve_apartment(apartment_number)
    apartment.add_renter(human)
  when "D"
    building.list_apartments()
  when "R"
    puts "What apartment do you live?"
    apartment_number = gets.chomp
    put "What is your name?"
    name = gets.chomp
    apartment = building.retrieve_apartment(apartment_number)
    human = apartment.retrieve_human(name)
    human = nil
  end

end


