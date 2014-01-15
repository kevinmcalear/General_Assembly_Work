# ### Days of the week
# - This should be done in a new file called days.rb
# - The user should be asked to enter what day of the week it (for Monday - Friday)
# - Based on their answer, print an approriate reponse (ie TGIF!)

puts "What day of the week is it( Monday - Friday)?"
day = gets.chomp.downcase
if day == "monday"
  puts "Happy Monday!"
elsif day == "tuesday"
  puts "Ugh Tuesday"
elsif day == "wednesday"
  puts "hump day"
elsif day == "thursday"
  puts "so colse"
elsif day == "friday"
  puts "yippie!!!"
else
  puts "incorrect input, try again :("
end