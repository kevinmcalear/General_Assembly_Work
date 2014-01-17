def menu
  puts "Please select an option:"
  puts "{b} Building details"
  puts "{a} Add an apartment to the building"
  puts "{t} Add a tenant"
  puts "{v} View apartment directory"
  puts "{q} Quit"
  return gets.chomp
end

def execute_choice(choice, building1)
  case choice
  when 'b'
    building_details(building1)
  when 'a'
    add_apartment
  when 't'
    add_tenant
  when 'v'
    apartment_directory
  end

end

def building_details(building1)
  puts "The building name is #{building1.b_name}"
  puts "The building address is #{building1.address}"
  puts "There are #{building1.num_floors} floors"
  puts "There are #{building1.num_apts} units."
end

def add_apartment

end

def add_tenant

end

def apartment_directory

end

class Building
  def initialize()
    @apts = []
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
     floor_nums = @apts.map {|apt| apt[:floor]}
     return floor_nums.uniq.count
  end

  def num_apts
     apt_nums = @apts.map {|apt| apt[:unit]}
     return apt_nums.uniq.count
  end

end



class Apartment
  def initialize
    @renter = nil
  end
  
  def a_name=(floor, number)
    @a_name = {:floor => [floor], :unit => [unit]}
  end

  def a_name
    return @a_name
  end

  def price=(price)
    @price = price
  end

  def price(price)
    return @price
  end

  def sqft=(sqft)
    @sqft = sqft
  end

  def sqft(sqft)
    return @sqft
  end

  def num_beds=(num_beds)
    @num_beds = num_beds
  end

  def num_beds(num_beds)
    return @num_beds
  end

  def num_baths=(num_baths)
    @num_baths = num_baths
  end

  def num_baths(num_baths)
    return @num_baths
  end

end


class Person
  def p_name=(p_name)
    @p_name = p_name
  end

  def p_name(p_name)
    return @p_name
  end

  def age=(age)
    @age = age
  end

  def age(age)
    return @age
  end

  def gender=(gender)
    @gender = gender
  end

  def gender(gender)
    return @gender
  end
end


building1 = Building.new
building1.b_name= "General Towers"
building1.address= "123 NYC"


choice = ""
while choice != 'q'
  choice = menu
  execute_choice(choice, building1)
end





