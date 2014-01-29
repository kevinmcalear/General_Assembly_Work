require 'pg'

begin

puts "Welcome to the Superhero Database"
puts ""
puts "Please enter a response from the options below:"
puts ""
puts "(I) Index - List all Super Heros"
puts "(A) Add a Super Hero"
puts "(V) View all info for a specific Super Hero"
puts "(U) Update a Super Hero"
puts "(R) Remove a Super Hero"
puts "(Q) Quit"

user_response = gets.chomp.downcase

case user_response
  when "i"
    user_response
  when "a"
    puts "Please Enter Super Hero Information:"
    puts ""
    print "Name: "
      name = gets.chomp.downcase
    print "Alter Ego: "
      alter_ego = gets.chomp.downcase
    print "Has Cape? (Y) or (N): "
      cape = gets.chomp.downcase
    print "Power: "
      power = gets.chomp.downcase
    print "Arch Nemesis: "
      arch_nemesis = gets.chomp.downcase

  when "v"
    user_response
  when "u"
    user_response
  when "r" 
    user_responseç
end while user_response != "q" end



