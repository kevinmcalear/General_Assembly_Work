def menu
  puts "Welcome to the rental index!"
  puts "What would you like to do?"
  puts "* View building details = view"
  puts "* Add an apartment to the building = apartment"
  puts "* Add a tenant = tenant"
  puts "* List the apartment directory for the building = directory"
  puts "* Quit"
end

menu 
response = gets.chomp.downcase

while response != "quit"
case response
  when "view"
  puts "The name of this building is #{building_name}."
  puts "It is located at #{address}."
  puts "It has #{num_floors} floors and #{apartments.size} apartments."
  #show name, address, number of floors, number of apartments
  when "apartment"
  puts "What's the name of the apartment?"
  puts "What is the square footage?"
  puts "What is the price?"
  puts "How many bedrooms?"
  puts "How many bathrooms?"
  puts "Who is renting?"
  #ask for the name, price, sqft, num_beds, num_baths, and renter
  when "tenant"
  puts "What is his or her name?"
  puts "What apartment will they be living in?"
  #ask for name, age, gender
  #ask what apartment they want to live in
  #add person to the apartment
  when "directory"
  #list the apartments and appropriate info for occupied vs unoccupied apartments. 
end
menu
response = gets.chomp.downcase
end


when "4"
  name = madison.apartment().each {|obj| puts obj.apartment_name }
  sqft = madison.apartment().each {|obj| puts obj.sqft }
  beds = madison.apartment().each {|obj| puts obj.num_beds }
  bath = madison.apartment().each {|obj| puts obj.num_baths }
  cost = madison.apartment().each {|obj| puts obj.price }
  renter = madison.apartment().each {|obj| puts obj.renter }
  if renter != "none"
    puts "#{madison.apartment().each {|obj| puts obj.apartment_name}} is #{madison.apartment().each {|obj| puts obj.sqft }} with #{madison.apartment().each {|obj| puts obj.num_beds }} and #{madison.apartment().each {|obj| puts obj.num_baths }}. It costs #{madison.apartment().each {|obj| puts obj.price }} per month."
  else 
    puts "#{renter} is renting #{name}."
  end
  # madison.apartment().each {|obj| puts obj.apartment_name }