#Create the classes for the data

# building = {
#   :b_name, 
#   :address, 
#   :floors, 
#   :apts=>[a_name, cost, sqft, beds, baths, #{renter}]
# }

# renter = [p_name, age, gender]

def building(apt_building)
  apt_building = Hash.new(0)
  apt_details = []
  
  apt_building[:b_name] = "Playa del Sol"
  apt_building[:address] = "123 La Cienaga Blvd., Los Angeles, CA"
  apt_building[:floors] = 3
  apt_building[:apts] = apt_details

  if apt_details.empty? == true
    puts "No apartments listed"

  else
    puts "What is the apartment number? Choose from:"
    puts "1A, 1B"
    puts "2A, 2B"
    puts "3A, 3B"

    apt_number = gets.chomp.capitalize
    apt_details.push(apt_number)

    puts "What is the monthly rent?"
    rent = gets.chomp
    apt_details.push(rent)

    puts "Square feet?"
    sqft = gets.chomp
    apt_details.push(sqft)

    puts "Number of beds?"
    num_beds = gets.chomp
    apt_details.push(num_beds)

    puts "Baths?"
    num_baths = gets.chomp
    apt_details.push(num_baths)

    puts "...and who will be living here?"
    renter = gets.chomp
    apt_details.push(renter)

    apt_details(6) = []
  end
end

def tenant
  puts "What the name?"
  renter_name = gets.chomp
  if renter_name != []
    puts "Sorry, that person does not live here."

  else
    puts "How old?"
    age = gets.chomp
    renter_name.push(age)

    puts "...and male or female?"
    gender = gets.chomp
    renter_name.push(gender)
  end
end

puts "Welcome!! Choose from the following options:"
puts "(A) View building details"
puts "(B) Add an apartment to the building"
puts "(C) Add a tenant"
puts "(D) List the apartment directory"

option = gets.chomp.upcase

if option == "A" 
  puts building(apt_building)
elsif option == "B"
  building
elsif option == "C"
  tenant
elsif option =="D"
    puts apt_details.drop(5).join(", ")