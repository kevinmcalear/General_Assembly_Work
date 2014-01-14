puts "is the A/C functional?"
functional = gets.chomp.downcase

if functional == "yes"
  functional == true
elsif functional == "no"
  functional == false
else
  puts "please enter yes or no"
  functional = gets.chomp
end

puts "what is the current temperature?"
temp = gets.chomp.to_i

puts "what temperature do you want it to be?"
comfort = gets.chomp.to_i



if functional && (temp > comfort)
  puts "Turn the ac on please"
elsif (!functional) && (temp > comfort)
  puts "Fix the AC now"
else
  puts "Fix the AC when you can"
end
