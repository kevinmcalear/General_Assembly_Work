puts "What's the temperature?"
temp = gets.chomp.to_f

puts "Is the A/C functional? (Y for yes, anything else for no)"
acfunc = gets.chomp
if acfunc == "Y"
	acfunc = true
else
	acfunc = false
end

puts "What temperature do you wish it were?"
wishtemp = gets.chomp.to_f

if acfunc && (temp > wishtemp)
	puts "Turn on A/C Please"
elsif !acfunc && (temp > wishtemp)
	puts "Fix the A/C now! It's hot!"
elsif !acfunc && (temp <= wishtemp)
	puts "Fix the A/C whenever you have the chance... It's cool..."
else
	puts "Well, aren't you just livin large!"
end
