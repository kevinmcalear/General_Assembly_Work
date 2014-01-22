# Rental App - take 2 - Nicholas Bundy

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
end

class Apartment
  def initialize(name, price, sqft, num_beds, num_baths)
    @name = name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renter = []
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

  def num_beds
    return @num_beds
  end

  def num_baths 
    return @num_baths
  end

  def add_tenant
    "What is the name of the new tenant?"
    name = gets.chomp
    "What is the age of the new tenant?"
    age = gets.chomp
    "What is the gender of the new tenant?"
    gender = gets.chomp
    person = Person.new(name, age, gender)
    self.renter().push(person)
  end

  def renter
    return @renter
  end
end

class Building
  def initialize(name, address, num_floors)
    @name = name
    @address = address
    @num_floors = num_floors
    @apts = []
  end

  def name 
    return @name
  end

  def address
    return @address
  end

  def num_floors
    return @num_floors
  end

  def add_apt
    "What is the name of the new apartment?"
    name = gets.chomp
    "How much is this apartment?"
    price = gets.chomp
    "How many square feet does it have?"
    sqft = gets.chomp
    "Please enter the number of bedrooms:"
    num_beds = gets.chomp
    "Please enter the number of bathrooms:"
    num_baths = gets.chomp
    newapt = Apartment.new(name, price, sqft, num_beds, num_baths)
    self.apts().push(newapt)
  end

  def apts
    return @apts
  end
end