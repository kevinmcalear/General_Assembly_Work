puts "What is the current tempurature?"
ctemp = gets.chomp.to_i

puts "What is your desired tempurate?"
dtemp = gets.chomp.to_i

puts "Is your AC functional? (type yes or no)"
acwork = gets.chomp.downcase

  if acwork == "yes" && (ctemp > dtemp)
    puts "Turn on the A/C Please"
  elsif acwork == "no" && (ctemp > dtemp)
    puts "Fix the A/C now! It's hot!"
  elsif acwork == "no" && (ctemp < dtemp)
    puts "Fix the A/C whenever you have the chance... It's cool..."
  else
    puts "Sorry didnt understand that. Please try again."
  end
    
