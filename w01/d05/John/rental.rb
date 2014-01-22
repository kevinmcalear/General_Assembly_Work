def menu(building)
  puts "Please select an option:"
  puts "{b} Building details"
  puts "{a} Add an apartment to the building"
  puts "{t} Add a tenant"
  puts "{r} Remove a tenant"
  puts "{v} View apartment directory"
  puts "{q} Quit"
  choice = gets.chomp

  case choice
  when 'b'
    building_details(building)
  when 'a'
    add_apartment(building)
  when 't'
    create_tenant(building)
  when 'r'
    remove_tenant(building)
  when 'v'
    apartment_directory(building)
  end

  puts
  return choice
end

def building_details(building)
  puts "Welcome to #{building.b_name}, #{building.address}"
  puts "The building currently has #{building.num_floors} floors with #{building.num_apts} units."
end

def add_apartment(building)
  apartment = Apartment.new
  
  puts "What is the name of the apartment?"
  puts building.list_existing_apts
  apartment.a_name= gets.chomp
  
  puts "What is the price of the apartment?"
  apartment.price= gets.chomp.to_i
  puts "What is the square footage?"
  apartment.sqft= gets.chomp.to_i
  puts "How many bedrooms?"
  apartment.num_beds= gets.chomp.to_i
  puts "How many baths?"
  apartment.num_baths= gets.chomp.to_i
  building.add_apt(apartment)
end

def create_tenant(building)
  person = Person.new
  puts "What is the name of the tenant?"
  person.p_name= gets.chomp
  puts "What is the tenant's age?"
  person.age= gets.chomp.to_i
  puts "What is the tenant's gender?  ('male' or 'female')?"
  person.gender= gets.chomp
  
  puts "Please select the apartment for this tenant:"
  puts building.list_avail_apts
  unit = gets.chomp
  
  puts building.add_tenant(unit, person)
end

def remove_tenant(building)
  puts "What is the name of the tenant to remove?"
  tenant = gets.chomp
  
  if building.tenant_match?(tenant)
    building.delete_tenant(tenant)
    puts
    apartment_directory(building)
  else
    puts "#{tenant} doesn't live in this building."
  end
end

def apartment_directory(building)
  puts "Empty Apartments in #{building.b_name}:"
  building.empty_apts
  puts
  puts "Current Tenants:"
  building.tenant_apts
end





class Building
  def initialize()
    @apts = []
    @apts_avail = []
  end

  def apts
    return @apts
  end

  def apts_avail
    @apts_avail = self.apts.select do |apt|
      apt.tenants.length < apt.num_beds
    end
    return @apts_avail
  end

  def b_name=(b_name)
    @b_name = b_name
  end

  def b_name
    return @b_name
  end

  def address=(address)
    @address = address
  end

  def address
    return @address
  end

  def num_floors
     floor_nums = self.apts.map {|apt| apt.a_name.to_i}
     return floor_nums.max
  end

  def num_apts
     return self.apts.count
  end

  def add_apt(apartment)
    self.apts.push(apartment)
  end

# Returns list of all existing apts
  def list_existing_apts
    a = self.apts.map {|apt| apt.a_name}
    return "(Already-existing apts: {#{a.join(", ")}})"
  end

# Returns list of apts with >= 1 empty bedroom
  def list_avail_apts
    a = self.apts_avail.map {|apt| apt.a_name }
    return "{#{a.join(", ")}}"
  end

  def add_tenant(unit, new_tenant)
    aptmnt = self.apts.find {|apt| apt.a_name == unit}
    aptmnt.tenants << new_tenant
    return "#{new_tenant.p_name} now lives in apartment ##{unit}!"
  end

# Check if tenant to remove lives in the building
  def tenant_match?(tenant)
    a = []
    self.apts.each do |apt|
      a << apt.tenants.map {|pers| pers.p_name }
    end
    return a.flatten!.include? tenant
  end

  def delete_tenant(tenant)
    self.apts.each do |apt|
      a = apt.tenants.find {|pers| pers.p_name == tenant}
      apt.tenants.delete a if a
    end
    puts "#{tenant} was removed from the building!"
  end

# List vacant apartment info 
  def empty_apts
    a = self.apts.select {|apt| apt.tenants.empty? }
    a.each do |apt| 
      puts "Apt ##{apt.a_name} is #{apt.sqft} sqft with #{apt.num_beds} bed(s) and #{apt.num_baths} bath(s). It costs $#{apt.price} per month."
    end
  end

# List inhabited apartment info
  def tenant_apts
    a = self.apts.reject {|apt| apt.tenants.empty? }
    a.each do |apt|
      b = apt.tenants.map {|pers| pers.p_name }
      print "#{b.join(" & ")} live(s) in Apt ##{apt.a_name}, which has #{apt.num_beds} bedroom(s). "
      
      if apt.num_beds > b.size
        puts "There is/are #{apt.num_beds - b.count} room(s) available."
      else
        puts "(Apartment full)"
      end
    end
  end


end



class Apartment
  def initialize
    @tenants = []
  end
  
  def a_name=(a_name)
    @a_name = a_name
  end

  def a_name
    return @a_name
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
    @num_baths = num_baths
  end

  def num_baths
    return @num_baths
  end

  def tenants
    return @tenants
  end

end


class Person
  def p_name=(p_name)
    @p_name = p_name
  end

  def p_name
    return @p_name
  end

  def age=(age)
    @age = age
  end

  def age
    return @age
  end

  def gender=(gender)
    @gender = gender
  end

  def gender
    return @gender
  end
end


bldg1 = Building.new
bldg1.b_name= "Sunshine Towers"
bldg1.address= "123 NYC"

apt1 = Apartment.new
apt1.a_name= "1A"
apt1.price= 1000
apt1.sqft= 500
apt1.num_beds= 1
apt1.num_baths= 1
bldg1.add_apt(apt1)

apt2 = Apartment.new
apt2.a_name= "2B"
apt2.price= 1600
apt2.sqft= 800
apt2.num_beds= 1
apt2.num_baths= 1
bldg1.add_apt(apt2)

apt3 = Apartment.new
apt3.a_name= "4B"
apt3.price= 2200
apt3.sqft= 900
apt3.num_beds= 2
apt3.num_baths= 2
bldg1.add_apt(apt3)

pers1 = Person.new
pers1.p_name = "Ranjit"
pers1.age = 24
pers1.gender = "female"
bldg1.add_tenant("2B", pers1)

pers2 = Person.new
pers2.p_name = "Molly"
pers2.age = 23
pers2.gender = "female"
bldg1.add_tenant("4B", pers2)



while menu(bldg1) != 'q'
end


