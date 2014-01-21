class Building
  def initialize(name, address, floors)
    @name = name
    @address = address
    @floors = floors
    @apartments = []
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

  def apartments
    return @apartments
  end

  def stats 
  @stats = { :name => @name, :address => @address, :floors => @floors, :apartments => @apartments }
  return @stats
end

def add_apt(apt)
  @apt = apt
  @apartments << @apt
end

def directory
    @apartments.each do |apartment|
      if apartment[:renters].empty?
        puts
        puts "*AVAILABLE*"
        puts "Apartment Number #{apartment[:name]} is #{apartment[:sqft]} square feet and has #{apartment[:beds]} bed(s) and #{apartment[:baths]} bath(s). It costs $#{apartment[:price]} a month."
        puts "-------------------------------------------------------"
      else
        puts "#{apartment[:renters][0][:name]} lives in Apartment Number #{apartment[:name]}"
      end
    end
  end

  def add_renter(apartment, person)
    @get_apartment = @apartments.index { | apt | apt[:name] == apartment}
    @apartments[@get_apartment][:renters] << person 
  end
end

  # ASKING THE USER TO CREATE THE BULIDING
puts `clear`
puts "Hello! Please tell me the name you want to call your building."
building = gets.chomp
puts "Now Tell me its address please!"
address = gets.chomp
puts "How many floors is this building?"
floors = gets.chomp