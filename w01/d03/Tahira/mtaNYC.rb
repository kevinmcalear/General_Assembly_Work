##Commit 2 + 3
##6 does not work yet
subway_lines = {
  :n => stops = ["TS", "34th", "28th-n", "23rd-n", "US", "8th-n"],
  :l => stops = ["8th-1", "6th", "US", "3rd", "1st"],
  :s => stops = ["GC", "33rd", "28th-s", "23rd-s", "US", "AP"]
}

puts "Which line do you want to get on?"
start_line = gets.chomp.downcase.to_sym
puts "What stop do you want to get on at?"
puts "Stops: #{subway_lines[start_line]}"
start_stop = gets.chomp

puts "Which line do you want to get off?"
finish_line = gets.chomp.downcase.to_sym
puts "What stop do you want to get off at?"
puts "Stops: #{subway_lines[finish_line]}"
finish_stop = gets.chomp


if start_line == finish_line
  stops = (subway_lines[start_line].index(start_stop) - subway_lines[finish_line].index(finish_stop)).abs
  puts "There are #{stops} stops on your trip."
else
  us_1 = (subway_lines[start_line].index(start_stop) - subway_lines[start_line].index("US")).abs
  us_2 = (subway_lines[finish_line].index(finish_stop) - subway_lines[finish_line].index("US")).abs
  puts "There are #{us_1+us_2} stops on your trip."
end

# subway_lines.each do |line, stop|
#   if stop.include?(finish)
#     finish_key = line
#   end 
# end


# def find_line(subway_lines, location) 
#   subway_lines.each do |line, stop|
#     if stop.include?(location)
#       return line
#     end 
#   end
# end

# start_line = find_line(subway_lines, start)
# finish_line = find_line(subway_lines, finish)


# puts "The stops on the subway are:"
# subway_lines.each do |line, stop|
#   puts "#{line}: #{stop}"
# end 
