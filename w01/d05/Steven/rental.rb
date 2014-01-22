

class Building 
  def initialize(name, address, num_floors, num_apts)
    #@apts = {}
    @b_name = name
    @address = address
    @num_floors = num_floors
    @num_apartments = num_apts
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
    return "#{self.b_name} |#{self.address} |#{self.num_floors} floors | #{self.num_apartments} apartments"
  end

end


class Person
  def initialize(age, gender)
    #@name = name
    @age = age
    @gender = gender

  # def name
  #   return @name
  #   end

  def age
      return @age
    end

    def gender
      return @gender
    end

end



class Apartment
   def initialize (apt_price, apt_sqft, num_beds, num_baths, renter)
    @apt_price = apt_price
    @apt_sqft = apt_sqft
    @num_beds = num_beds
    @num_baths = num_baths
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

  def apt_directory
    return "#{apt_name} is #{apt_sqft} sq ft, has #{num_beds}, #{num_baths}, and costs #{apt_price}."
  end

  def apt_occupied
    return "#{renter} lives in #{apt_name}. #{renter} is lovely."
  end

end


bldg_1 = Building.new("Super Huge Tower", "545 Main st", 10, 20)



  puts "Oh Hey! Welcome To The Building!"
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
      puts "How much does this sweet pad cost?"
      price = gets.chomp.to_i
      puts "What is the square footage?"
      sqft = gets.chomp.to_i
      puts "How many beds?"
      num_beds = gets.chomp.to_i
      puts "How many baths?"
      num_baths = gets.chomp.to_i
      puts "Who do you think you are?"
      renter = gets.chomp
      name = Apartment.new(price, sqft, num_beds, num_baths, renter)

      apt_hash = {
        
      }



    when 3
      puts "What is the tenant name?"
      name = gets.chomp
      puts "What is the tenant age?"
      age = gets.chomp
      puts "What is the tenant gender?"
      gender = gets.chomp
      name = Person.new(age, gender)




    when 4
      puts apt_directory



    end

    puts "Great! What now?"
    puts "[1]-View building details [2]-Add an apartment to the building"
    puts "[3]-add a tenant [4]-apartment directory [5]-quit"
    answer = gets.chomp.to_i
  end
end





  







