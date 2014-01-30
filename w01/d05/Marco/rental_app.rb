class Building
  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    
    @apt_list = []
    @tenant_list = []

    # @name = "The Concordia"
    # @address = "401 W. 23rd Street"
    # @floors = 14
    
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

  def apt_list
    return @apt_list
  end

  def deets
    @deets = { name: @name, address: @address, floors: @floors, apt_list: @apt_list}
    return @deets
  end

  def add_apt(apt)
    @apt_list.push(apt)
  end

  def add_tenant(tenant)
    @add_tenant.push(tenant)
  end

end

class Apartment

  def initialize(name, price, sqft, num_bedrms, num_bathrms)
    @name = name
    @price = price
    @sqft = sqft
    @num_bedrms = num_bedrms
    @num_bathrms = num_bathrms
  end

  def name
    return @name
  end

  # def price=(price)
  #   @price = price
  # end

  def price
    return @price
  end

  # def sqft=(sqft)
  #   @sqft = sqft
  # end

  def sqft
    return @sqft
  end

  # def num_bedrms=(num_bedrms)
  #   @num_bedrms = num_bedrms
  # end

  def num_bedrms
    return @num_bedrms
  end

  # def num_bathrms=(num_bathrms)
  #   @num_bathrms = num_bathrms
  # end

  def num_bathrms
    return @num_bathrms
  end

end

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

def menu
  puts "-------------------------------"
  puts "1. (V)iew Building Details"
  puts "2. Add New (A)partment to Building"
  puts "3. Add New (T)enant Information"
  puts "4. (L)ist apartments to Building"
  puts "5. (Q)uit"
end



puts "-------------------------------"
puts "Main Menu for Building Rentals"
# puts "Please press (B) to add building details or or (Q) to quit."

puts "To add a new building, please fill in the following information:"
puts "What is the name of this building?"
  @name = gets.chomp
puts "What is the address for this apartment?"
  @address = gets.chomp.to_i
puts "How many floors are in this apartment?"
  @floors = gets.chomp

added_building = Building.new(@name, @address, @floors)
puts "Name: #{added_building.name}"
puts "Address: #{added_building.address}"
puts "Floors: #{added_building.floors}"

added_building.apt_list.push(added_building)

puts "To continue, press any button."

response = gets.chomp.downcase

until response == "q"

puts menu

response = gets.chomp.downcase

  case response

    when "v"
      # added_building = Building.new

      puts "Name: #{added_building.name}"
      puts "Address: #{added_building.address}"
      puts "Floors: #{added_building.floors}"

    when "a"

      puts "To add an apartment, please fill in the following information:"
      puts "What is the name of the apartment?"
        @name = gets.chomp
      puts "How much is the monthly rent for this apartment?"
        @price = gets.chomp.to_i
      puts "How many square feet is this apartment?"
        @sqft = gets.chomp
      puts "How many bedrooms does this apartment have?"
        @num_bedrms = gets.chomp.to_i
      puts "How many bathrooms does this apartment have?"
        @num_bathrms = gets.chomp.to_i

      new_apt = Apartment.new(@name, @price, @sqft, @num_bedrms, @num_bathrms)
      puts "New Apartment Details Added!"
      puts "Name: #{new_apt.name}"
      puts "Price: #{new_apt.price}"
      puts "SqFt: #{new_apt.sqft}"
      puts "Bedrooms: #{new_apt.num_bedrms}"
      puts "Bathrooms: #{new_apt.num_bathrms}"

      added_building.apt_list.push(new_apt)

    when "t"

      puts "To add a new tenant, please fill in the following information:"
      puts "What is the tenant's name?"
        @name = gets.chomp
      puts "What is the tenant's age?"
        @age = gets.chomp.to_i
      puts "What is the tenant's gender? (M/F)"
        @gender = gets.chomp

      new_tenant = Person.new(@name, @age, @gender)

      puts "New Tenant Details Added!"
      puts "Name: #{new_tenant.name}"
      puts "Age: #{new_tenant.age}"
      puts "Gender: #{new_tenant.gender}"

      added_building.apt_list.push(new_tenant)

    when "l"
      puts "#{added_building.apt_list[0]}"

    when "q"
      puts "Goodbye"

    else 
      puts "That is not a valid option. Please try again."

  end

end

