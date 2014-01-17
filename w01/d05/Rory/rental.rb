##### Rental App ########
###### making classes ########

class Person

  def initialize()
    @person_hash = Hash.new
  end

  
  def name=(input)
    @name=input
  end

  def name
    return @name
  end

  def age=(input)
    @age=input
  end

  def age
    return @age
  end

  def gender=(input)
    @gender=input
  end

  def gender
    return @gender
  end

  def add_person_to_hash(x)
    @person_hash[x] = {:age => @age, :gender => @gender}
  end

  def person_hash
    return @person_hash
  end

end

class Apartment

  def initialize()
    @apartments = []
  end

  def name=(input)
      @name=input
    end

  def name
    return @name
  end

  def price=(input)
      @price=input
    end

  def price
    return @price
  end

  def sqft=(input)
      @sqft=input
    end

  def sqft
    return @sqft
  end

  def num_beds=(input)
      @num_beds=input
    end

  def num_beds
    return @num_beds
  end

  def num_baths=(input)
      @num_baths=input
    end

  def num_baths
    return @num_baths
  end

end

class Building

  def initialize()
    @buildings = []
  end

  def name=(input)
      @name=input
    end

  def name
    return @name
  end

  def address=(input)
      @address=input
    end

  def address
    return @address
  end

  def num_floors=(input)
      @num_floors=input
    end

  def num_floors
    return @num_floors
  end

  def apartments=(input)
      @apartments=input
    end

  def apartments
    return @apartments
  end

end

###### Rental Program #########
puts "***Rental Program***"

building = Building.new

def menu
  puts "Menu"
  puts "(v)iew apartment details, add an (a)partment to the building, add a (t)enant, (l)ist the apartment directory, or (q)uit?"
  user_input = gets.chomp.downcase 
end

while menu != "q"
  case user_input
  when "v"


  when "a"



  when "t"
    add_tenant = Person.new
    puts "What is your name?"
    add_tenant.name = gets.chomp
    puts "What is your age?"
    add_tenant.age = gets.chomp
    puts "What is your gender?"
    add_tenant.gender = gets.chomp
    add_tenant.add_person_to_hash(add_tenant.name)

    puts @person_hash

  when "l"

  end
  user_input = menu
end

