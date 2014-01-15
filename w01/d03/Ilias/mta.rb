mta = {
  :n => ['ts', '34th', '28th-n', '23rd-n', 'us'],
  :l => ['8th', '6th', 'us', '3rd', '1st']
}

def stop_counter(line1, line2, start, finish, mta)
  if line1 == line2
    x = mta[line1].index(start)
    y = mta[line1].index(finish)
    dist = (x - y).abs
    return dist
  else
    x = (mta[line1].index(start) - mta[line1].index("us")).abs
    y = (mta[line2].index("us") - mta[line2].index(finish)).abs
    dist = (x + y)
    return dist
  end
end

puts "What line do you want to ride on? n or l?"
first_line = gets.chomp.downcase.to_sym
case first_line
when :n
  puts "What are you now? #{mta[:n]}"
  first_stop = gets.chomp.downcase
when :l
  puts "What are you now? #{mta[:l]}'"
  first_stop = gets.chomp.downcase
else
  puts "Sorry didn't get that..."
  first_stop = gets.chomp.downcase
end

puts "What line do you want to get off on? n or l?"
second_line = gets.chomp.downcase.to_sym
case second_line
when :n
  puts "What stop you do want to arrive at? #{mta[:n]}"
  last_stop = gets.chomp.downcase
when :l
  puts "What stop you do want to arrive at? #{mta[:l]}"
  last_stop = gets.chomp.downcase
end

stops = stop_counter(first_line, second_line, first_stop, last_stop, mta)

puts "You are traveling #{stops} stops."


