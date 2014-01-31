require_relative "lib/grammys"

FILE_PATH = "grammys.csv"

# def add_grammy
#   puts
#   puts "What is the year?"
#   year = gets.chomp.to_i
#   puts "What is the category?"
#   category = gets.chomp
#   puts "Who won?"
#   winner = gets.chomp
#   Grammy.new(year, category, winner)
#   Grammy.save(FILE_PATH)
# end


Grammy.read(FILE_PATH)
begin

puts
puts "Please select an option:"
puts "1) Add a Grammy"
puts "2) List all Grammys"
puts "3) Delete a Grammy"
puts "4) Quit"

choice = gets.chomp

if choice == '1'
  Grammy.add
elsif choice == '2'
  puts  
  puts Grammy.all
elsif choice == '3'
  grammys = Grammy.all
  puts "Please select the number of the Grammy to delete:"

  grammys.each_with_index do |grammy, index|
    puts "#{index + 1}) #{grammy}"
  end
  
  delete_choice = gets.chomp.to_i
  grammy_index = delete_choice - 1
  Grammy.delete(grammy_index)

elsif choice == '4'
  puts "Good-bye!"
else
  puts "#{choice} was not an option"
end

puts

end while choice != '4'