mta = {
  :n => ["ts", "34th", "28th-n", "23rd-n", "us", "8th"],
  :l => ["8th", "6th", "us", "3rd", "1st"],
  :s => ["gc", "33rd", "28th-s", "23rd-s", "us", "as"]
}

def print_lines(mta)
   lines = []
   mta.each do |key, value|
      lines.push(key)
    end
    puts "The lines are: {#{lines.join(", ")}}"
 end

def print_stops(mta, line)
  print "For line #{line}, the stops are : "
  puts mta[line].join(", ")
end


puts "What line would you like to take?"
print_lines(mta)
begin_line = gets.chomp.to_sym

puts "What stop would you like to get on?"
print_stops(mta, begin_line)
begin_stop = gets.chomp

puts "What line would you like to get off?"
print_lines(mta)
end_line = gets.chomp.to_sym

puts "What stop would you like to get off at?"
print_stops(mta, end_line)
end_stop = gets.chomp

if begin_line == end_line
  begin_index = mta[:begin_line].index(begin_stop)
  end_index = mta[:end_line].index(end_stop)
  total_stops = (begin_index - end_index).abs
else
  first_line_begin = mta[begin_line].index(begin_stop)
  first_line_end = mta[end_line].index("us")
  first_leg = (first_line_begin - first_line_end).abs

  second_line_begin = mta[end_line].index("us")
  second_line_end = mta[end_line].index(end_stop)
  second_leg = (second_line_begin - second_line_end).abs
  total_stops = first_leg + second_leg
end

puts "The length of that trip is #{total_stops}."
