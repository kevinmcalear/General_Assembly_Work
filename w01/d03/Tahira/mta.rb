
subway_lines = {
  :n => stops = ["TS", "34th", "28th-n", "23rd-n", "US"],
  :l => stops = ["8th", "6th", "US", "3rd", "1st"],
  :s => stops = ["gc", "33rd", "28th-s", "23rd-s", "us"]
}

##Commit 1
puts "The stops on the N line are:"
puts subway_lines[:n] 

subway_lines[:n].each do |stop|
  puts stop
end




def trip {
  puts "Where would you like to get on?"
  start = gets.chomp
  puts "Where would you like to get off?"
  stop = gets.chomp
}




