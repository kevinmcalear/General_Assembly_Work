require_relative 'rental2'

puts "Welcome to your new apartment building!"
puts "What would you like to name your complex?"
name = gets.chomp
puts "What is the address of your building?"
address = gets.chomp
puts "How many floors do you want to create?"
num_floors = gets.chomp
$newbuild = Building.new(name, address, num_floors)

# Create a loop for the menu
end_program = "no"
while end_program != 5

# Create a menu 
puts
puts"--------------------------------------------------"
puts"                         MENU                     "
puts" (1)View Building Details    (3)Add Apartment     "
puts" (2)Apartment Directory      (4)Add Tenant        "
puts"                       (5)Quit                    "
puts"--------------------------------------------------"
puts

# Prompt user 
puts"Please choose an item from the menu:"
menu_choice = gets.chomp.to_i

# If user doesn't respond with a number from the list it will
# loop until they choose a number
while menu_choice > 5 
  puts "Wrong entry! Please enter a number between 1 and 5:"
  menu_choice = gets.to_i
end

# Actions in response to menu item chosen
case menu_choice
  when 1
     # Show the building information
  puts "---------------------------------------------------"
  puts "          Current Building Information             "
  puts "Building Name: #{$newbuild.name.capitalize}  "
  puts "Address: #{$newbuild.address}              "
  puts "Number of floors: #{$newbuild.num_floors}  "
  puts "Number of Apartments: #{$newbuild.apts}"
  puts "---------------------------------------------------"
  end_program = "no"

  when 2

  when 3
    $newbuild.add_apt
    end_program = "no"

  when 4
    puts "Which apartment would you like to add a tenant to?"
    new_tenant = gets.chomp
    locate_apartment = $newbuild.apts.find do |apts|
      apts.name == new_tenant
    end
    locate_apartment.add_tenant
    end_program = "no"

  when 5
    # End the program
    puts "Program Complete, Goodbye!"
    end_program = 5
  end

end



