puts "What is the current temperature?"
temperature = gets.chomp.to_i
puts "Is the A/C functioning? (y/n)"
ac = gets.chomp.downcase
y = true
n = false
puts "What temperature do you wish it was?"
wish_temp = gets.chomp.to_i

if temperature > wish_temp && ac 
  puts "Turn on the A/C please"
elsif !ac && temperature > wish_temp
  puts "Fix the A/C now! It's hot!"
else !ac && temperature < wish_temp
  puts "Fix the A/C whenever you have the chance... it's cool..."
end

#if ac && temperature > wish_temp
 # puts "Turn on the A/C please"
#elsif 