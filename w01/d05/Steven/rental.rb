

class Building
  def initialize
    @apts = []
  end

  def b_name=(b_name)
    @b_name = b_name
  end

  def address=(address)
    @address = address
  end

  def num_floors=(floors)
    @num_floors = floors
  end

  def num_apartments=(num_apartments)
    @num_apartments = num_apartments
  end

    def b_name
    return @b_name
  end

  def address
    return @address
  end

  def num_floors
    return @num_floors
  end

  def num_apartments
    return @num_apartments
  end

  def building_menu
    return "#{self.b_name} |#{self.address} |#{self.num_floors} | #{self.num_apartments}"
  end

end


class Person
  def name=(name)
    @name = name
  end
   def age=(age)
    @age = age
  end

   def gender=(gender)
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
   def initialize
   end

  # def apt_name=(apt_name)
  #   @apt_name = apt_name
  # end

  def apt_price=(apt_price)
    @apt_price = apt_price
  end

  def apt_sqft=(apt_sqft)
    @apt_sqft = (apt_sqft)
  end

  def num_beds=(num_beds)
    @num_beds = (num_beds)
  end

  def num_baths=(num_baths)
    @num_baths = (num_baths)
  end

  def renter=(renter)
    @renter = renter
  end

  # def apt_name
  #   return @apt_name
  # end

  def apt_price
    return @apt_price
  end

  def apt_sqft
    return @apt_sqft
  end

  def num_beds
    return @num_beds
  end

  def num_baths
    return @num_baths
  end

  def renter
    return @renter
  end

end


bldg_1 = Building.new
bldg_1.b_name= "Big Tower 1"
bldg_1.address= "545 Main st"
bldg_1.num_floors= (10)
bldg_1.num_apartments= (20)





  puts "Welcome To The Building!"
  puts "Choose from the following options"
  puts "[1]-View building details [2]-Add an apartment to the building"
  puts "[3]-add a tenant [4]-apartment directory [5]-quit"
  answer = gets.chomp.to_i
  while answer != 5
    case answer
    when 1
      puts bldg_1.building_menu
    when 2
      puts "What is the apt name?"
      name = gets.chomp
      name = Apartment.new
      puts "How much does this sweet pad cost?"
      price = gets.chomp.to_i
      price = name.apt_price
      puts "What is the square footage?"
      sqft = gets.chomp.to_i
      sqft = name.apt_sqft
      puts "How many beds?"
      beds = gets.chomp.to_i
      beds = name.num_beds
      puts "How many baths?"
      baths = gets.chomp.to_i
      baths = name.num_baths
      puts "Who do you think you are?"
      person = gets.chomp
      person = name.renter
    end
    puts "What now?"
    answer = gets.chomp
  end




  







