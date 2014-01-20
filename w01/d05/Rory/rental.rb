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

  def apt=(input)
    @apt=input
  end

  def apt
    return @apt
  end

  def add_person_to_hash
    person_hash[@name] = {
      :age => @age, :gender => @gender, :apt => @apt
    }
  end

  def person_hash
    return @person_hash
  end

end

class Apartment

  def initialize()
    @apt_hash = Hash.new
  end

  def apt_name=(input)
      @apt_name=input
    end

  def apt_name
    return @apt_name
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

  def name=(input)
    @name=input
  end

  def name
    return @name
  end

  def add_apt_to_hash
    apt_hash[@name] = {
      :apt_name => @apt_name, :price => @price, :sqft => @sqft, :num_beds => @num_beds, :num_baths => @num_baths
    }
  end

  def apt_hash
    return @apt_hash
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
end

menu
user_input = gets.chomp

while user_input != "q"
  case user_input
  when "v"
      puts "v"
  when "a"
      new_apt = Apartment.new
      puts "What is the apartment name?"
      new_apt.apt_name = gets.chomp
      puts "What is the apartment price?"
      new_apt.price = gets.chomp
      puts "What is the apartment square footage?"
      new_apt.sqft = gets.chomp
      puts "What is the number of beds?"
      new_apt.num_beds = gets.chomp
      puts "What is the number of baths?"
      new_apt.num_baths = gets.chomp
      puts "What is the renter name?"
      new_apt.name = gets.chomp
      new_apt.add_apt_to_hash

  when "t"
      new_tenant = Person.new
      puts "What is your name?"
      new_tenant.name = gets.chomp
      puts "What is your age?"
      new_tenant.age = gets.chomp
      puts "What is your gender?"
      new_tenant.gender = gets.chomp
      puts "What apartment do you want to live in?"
      new_tenant.apt = gets.chomp
      new_tenant.add_person_to_hash

  when "l"
      puts "l"
  end

  menu
  user_input = gets.chomp

end