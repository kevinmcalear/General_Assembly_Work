puts "What day of the week is it?"

input = gets.chomp.downcase

# if input == "monday"
#   puts "Man, Mondays suck..."

# elsif input == "tuesday"
#   puts "At least it's not Monday!"

# elsif input == "wednesday"
#   puts "Humpday!"

# elsif input == "thursday"
#   puts "Thirsty?"

# elsif input == "friday"
#   puts "TGIF!"

# end




case input
  when "monday"
    puts "Man, Mondays suck..."
  when "tuesday"
    puts "At least it's not Monday!"
  when "wednesday"
    puts "Humpday!"
  when "thursday"
    puts "Thirsty?"
  when "friday"
    puts "TGIF!"
  end

