class Person
  attr_accessor :name, :age, :gender

  def initialize(name, age, gender)
    @name = name
    @age = age
    @gender = gender
  end

end

class Apartment
  attr_accessor :name, :price, :sqft, :num_beds, :num_baths, :renters

  def initialize(name, price, sqft, num_beds, num_baths)
    @name = name
    @price = price
    @sqft = sqft
    @num_beds = num_beds
    @num_baths = num_baths
    @renters = []
  end

end

class Building
  attr_accessor :name, :address, :num_floors, :apartments

  def initialize(name, address, num_floors)
    @name = name
    @address = address
    @num_floors = num_floors
    @apartments = []

  end

  def view_building_details
    puts "Building Details"
    puts "name: #{@name}"
    puts "address: #{@address}"
    puts "Floors: #{@num_floors}"
    puts "apartments: #{apartments.size}"
  end

  def add_apartment
    puts "Apartment"
    print "Name: "
    name = gets.chomp
    print "Price: "
    price = gets.chomp
    print "Sqft: "
    sqft = gets.chomp
    print "Beds: "
    num_beds = gets.chomp
    print "Baths: "
    num_baths = gets.chomp
 
    apt = Apartment.new(name, price, sqft, num_beds, num_baths)

    self.apartments << apt   
  end

  def add_tenant
    puts "Tenant: "
    print "Name: "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    print "Gender: "
    gender = gets.chomp

    tenant_person = Person.new(name, age, gender)
    apts = apartments.map {|apt| apt.name}
    apts_str = apts.join(" | ")
    

    puts "Which apt? #{apts_str}"
    choice = gets.chomp
    self.apartments[apts.find_index(choice)].renters << tenant_person

  end

  def list_apts
    apartments.each do |apt|
      if apt.renters.empty?
        puts "Apt #{apt.name} is #{apt.sqft} ft and has #{apt.num_beds} beds and #{apt.num_baths} baths. It costs $#{apt.price} a month."
      else
        roommates = apt.renters.map {|renter| renter.name}
        puts "#{roommates.join(" and ")} live(s) in Apt #{apt.name}."
      end
    end


  end

  def remove_tenant
    apts = apartments.map {|apt| apt.name}
    apts_str = apts.join(" | ")
    

    puts "Which apt? #{apts_str}"
    apartments.each_with_index do |apt, i|
      puts "#{i+1}) #{apt.name}"
    end


    choice = gets.chomp.to_i
    apt = self.apartments[choice-1]

    apt.renters.each_with_index do |renter, i|
      puts "#{i+1}) #{renter.name}"
    end

    index_selected = gets.chomp.to_i - 1

    apt.renters.delete_at(index_selected)
  end

end



#Create the first Building
building1 = Building.new("G's place", "355 West 51st", 6)

quit = false

until quit

  puts "Menu options: " 
  puts "1) View Building details"
  puts "2) Add an apartment to the building"
  puts "3) Add a tenant"
  puts "4) List the apartment directory for the building"
  puts "5) Remove tenant"
  puts "6) Quit"
  print "Input: "
  # p building1

  choice = gets.chomp

  case choice
  when "1"
    building1.view_building_details
  when "2"
    building1.add_apartment
  when "3"
    building1.add_tenant
  when "4"
    building1.list_apts
  when "5"
    building1.remove_tenant
  else
    quit = true
  end

end