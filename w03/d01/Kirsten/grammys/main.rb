require_relative "lib/grammys.rb"

system "clear"

puts "************************************"
puts "Hello! Welcome to the Grammy Archive"
puts "************************************"

Grammy.list_all("grammys.csv")

begin

puts "What would you like to do?"
puts "1. Add a Grammy"
puts "2. List all Grammys"
puts "3. Delete a Grammy" 
puts "4. Quit"

response = gets.chomp

if response == "1"
  puts "What year?"
  year = gets.chomp
  puts "What category?"
  category = gets.chomp
  puts "Who won?"
  winner = gets.chomp

  Grammy.new(year, category, winner)

  Grammy.save_all("grammys.csv")

elsif response == "2"
   grammys = Grammy.all
   grammys.each {|grammy| puts grammy}

elsif response == "3"
  grammys = Grammy.all
  grammys.each_with_index {|grammy, index| puts "#{index+1}. #{grammy}"}
  puts "Which grammy would you like to delete?"
  number = gets.chomp.to_i
  index = number - 1
  Grammy.delete_entry("grammys.csv", index)
  puts "You have deleted this entry."
  Grammy.save_all("grammys.csv")

elsif response != "4" 
  puts "Invalid input"

end
end while response != "4"
