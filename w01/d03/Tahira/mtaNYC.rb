##Commit 1

subway_lines = {
  :n => stops = ["TS", "34th", "28th-n", "23rd-n", "US"],
  :l => stops = ["8th", "6th", "US", "3rd", "1st"],
  :s => stops = ["gc", "33rd", "28th-s", "23rd-s", "us"]
}


puts "The stops on the N line are:"
puts subway_lines[:n] 

puts "Where would you like to get on?"
start = gets.chomp
puts "Where would you like to get off?"
stop = gets.chomp



stops = (subway_lines[:n].index(start) - subway_lines[:n].index(stop)).abs
puts "There are #{stops} stops on your trip."