##mtaNYC.rb w/ Bonus
subway_lines = {
  :n => stops = ["TS", "34th-n", "28th-n", "23rd-n", "US", "8th-n"],
  :l => stops = ["8th-1", "6th", "US", "3rd", "1st"],
  :s => stops = ["GC", "33rd", "28th-s", "23rd-s", "US", "AP"],
  :o => stops = ["59th", "50th", "TS", "34th-o", "28th-o"]
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

junction = "US"

#makes finish_line always :o if :o line is taken
if(finish_line == :o || start_line == :o)
  if(start_line == :o)
    holder_line = finish_line
    finish_line = start_line
    start_line = holder_line
    holder_stop = finish_stop
    finish_stop = start_stop
    start_stop = holder_stop
  end
    junction = "TS"
end

#determines number of lines taken
if(start_line == finish_line)
  num_lines = 1
elsif finish_line == :o && start_line != :n
  num_lines =3
else
  num_lines =2
end

case num_lines
  when 1
    stops = (subway_lines[start_line].index(start_stop) - subway_lines[finish_line].index(finish_stop)).abs
  when 2
    line_1 = (subway_lines[start_line].index(start_stop) - subway_lines[start_line].index(junction)).abs
    line_2 = (subway_lines[finish_line].index(finish_stop) - subway_lines[finish_line].index(junction)).abs
    stops = line_1 + line_2
  when 3
    us_1 = (subway_lines[start_line].index(start_stop) - subway_lines[start_line].index("US")).abs
    ts_1 = (subway_lines[finish_line].index(finish_stop) - subway_lines[finish_line].index("TS")).abs
    #n always equals 4
    n = (subway_lines[:n].index("TS") - subway_lines[:n].index("US")).abs
    stops = us_1 + ts_1 + n
  end

puts "There are #{stops} on your trip."

# if start_line == finish_line
#   stops = (subway_lines[start_line].index(start_stop) - subway_lines[finish_line].index(finish_stop)).abs
#   puts "There are #{stops} stops on your trip."
# elsif finish_line==:o && start_line != :o
#   us_1 = (subway_lines[start_line].index(start_stop) - subway_lines[start_line].index("US")).abs
#    n = (subway_lines[:n].index("TS") - subway_lines[:n].index("US")).abs
#     stops = us_1 + ts_1 + n
#   ts_1 = (subway_lines[finish_line].index(finish_stop) - subway_lines[finish_line].index("TS")).abs
#     if(start_line == :n)
#       puts "There are #{us_1+ts_1} stops on your trip."
#     else
#       puts "There are #{us_1+ts_1+n} stops on your trip."
#     end
#  else 
#   us_1 = (subway_lines[start_line].index(start_stop) - subway_lines[start_line].index("US")).abs
#   us_2 = (subway_lines[finish_line].index(finish_stop) - subway_lines[finish_line].index("US")).abs
#   puts "There are #{us_1+us_2} stops on your trip."
# end

#method finds line given subway stop
# def find_line(subway_lines, location) 
#   subway_lines.each do |line, stop|
#     if stop.include?(location)
#       return line
#     end 
#   end
# end

# start_line = find_line(subway_lines, start)
# finish_line = find_line(subway_lines, finish)

#displays all stops
# puts "The stops on the subway are:"
# subway_lines.each do |line, stop|
#   puts "#{line}: #{stop}"
# end 
