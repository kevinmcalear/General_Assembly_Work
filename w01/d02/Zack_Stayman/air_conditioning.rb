puts "is the A/C functional?"
functional = gets.chomp

puts "what is the current temperature?"
temp = gets.chomp.to_i

puts "what temperature do you want it to be?"
comfort = gets.chomp.to_i

if functional == "yes"
  functional = true
else
  functional = false
end

if functional && (temp > comfort)
  puts "Turn the ac on please"
elsif (functional == false) && (temp > comfort)
  puts "Fix the AC now"
elsif (functional == false) && (temp < comfort)
  puts "Fix the AC when you can"
else
  puts "You're doing fine"
end
