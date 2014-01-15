

n_line = ["times square", "34th", "28th", "23rd", "union square", "8th"]
# l_line = ["8th ave", "6th ave", "union square", "3rd ave", "1st ave"]
# 6_line = ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]

puts "The N line stops at Times Square, 34th, 28th, 23rd, Union Square, and 8th"
puts "What stop do you want to get on at?"
f_stop = gets.chomp.downcase

puts "What stop do you want to get off at?"
l_stop = gets.chomp.downcase

l_stop_number = n_line.index(l_stop) +1
f_stop_number = n_line.index(f_stop) +1
puts "You have gone #{(l_stop_number-f_stop_number).abs} stops."