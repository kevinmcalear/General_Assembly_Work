def stop_count(line1, line2, start, finish)
  if line1 == line2
    x = line1.index(start)
    y = line1.index(finish)
    dist = (x - y).abs
    return dist
  else
    x = (line1.index(start) - line1.index("us")).abs
    y = (line2.index("us") - line2.index(finish)).abs
    dist = (x + y)
    return dist
  end
end

n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']

puts "What line do you want to ride on? n or l?"
first_line = gets.chomp.downcase
case first_line
when "n"
  first_line = n
  puts "What are you now? #{n}"
  first_stop = gets.chomp.downcase
when "l"
  first_line = l
  puts "What are you now? #{l}'"
  first_stop = gets.chomp.downcase
else
  puts "Sorry didn't get that..."
  first_stop = gets.chomp.downcase
end

puts "What line do you want to get off on? n or l?"
second_line = gets.chomp.downcase
case second_line
when "n"
  second_line = n
  puts "What stop you do want to arrive at? #{n}"
  last_stop = gets.chomp.downcase
when "l"
  second_line = l
  puts "What stop you do want to arrive at? #{l}"
  last_stop = gets.chomp.downcase
end

stops = stop_count(first_line, second_line, first_stop, last_stop)

puts "You are traveling #{stops} stops."


