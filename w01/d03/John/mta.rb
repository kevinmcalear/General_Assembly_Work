mta = {
  :n => ["ts", "34th", "28th-n", "23rd-n", "us", "8th"],
  :l => ["8th", "6th", "us", "3rd", "1st"],
  :s => ["gc", "33rd", "28th-s", "23rd-s", "us", "as"],
  :o => ["59th", "50th", "ts", "34th", "28th"]
}

def print_lines(mta)
  lines = []
  mta.each do |key, value|
    lines.push(key)
  end
  puts "The lines are: {#{lines.join(", ")}}"
end

def print_stops(mta, line)
  print "For the #{line.capitalize}-line, the stops are: "
  puts "{#{mta[line].join(", ")}}"
end

def one_line(mta, begin_line, begin_stop, end_stop)
  begin_index = mta[begin_line].index(begin_stop)
  end_index = mta[begin_line].index(end_stop)
  return (begin_index - end_index).abs
end

def three_lines(mta, begin_line, begin_stop, end_line, end_stop)
  first_line_begin = mta[begin_line].index(begin_stop)
  first_line_end = mta[begin_line].index("us")
  first_leg = (first_line_begin - first_line_end).abs

  second_line_begin = mta[end_line].index("us")
  second_line_end = mta[end_line].index(end_stop)
  second_leg = (second_line_begin - second_line_end).abs  
  return first_leg + second_leg
end

def four_lines(mta, begin_line, begin_stop, end_line, end_stop)
  if begin_line == :o
    first_leg = one_line(mta, begin_line, begin_stop, "ts")
    second_leg = three_lines(mta, :n, "ts", end_line, end_stop)
    return first_leg + second_leg
  elsif begin_line == :n
    first_leg = one_line(mta, begin_line, begin_stop, "ts")
    second_leg = one_line(mta, end_line, "ts", end_stop)
    return first_leg + second_leg
  else
    first_leg = three_lines(mta, begin_line, begin_stop, :n, "ts")
    second_leg = one_line(mta, end_line, "ts", end_stop)
    return first_leg + second_leg
  end
end

puts "What line do you want to start?"
print_lines(mta)
begin_line = gets.chomp.to_sym

puts "What stop do you want to get on?"
print_stops(mta, begin_line)
begin_stop = gets.chomp

puts "What line do you want to end on?"
print_lines(mta)
end_line = gets.chomp.to_sym

puts "What stop do you want to get off?"
print_stops(mta, end_line)
end_stop = gets.chomp


if begin_line == end_line
  total_stops = one_line(mta, begin_line, begin_stop, end_stop)
elsif begin_line != :o && end_line != :o
  total_stops = three_lines(mta, begin_line, begin_stop, end_line, end_stop)
else
  total_stops = four_lines(mta, begin_line, begin_stop, end_line, end_stop)
end



puts "The length of that trip is #{total_stops}."

