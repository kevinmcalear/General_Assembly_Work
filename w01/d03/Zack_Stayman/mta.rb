# This is our train line data
puts `clear`

$mta = {
  :n => ["ts", "34th-n", "28th-n", "23rd-n", "us", "8th-n"], 
  :l => ["8th-l","6th", "us", "3rd", "1st"],
  :s => ["gc", "33rd", "28th-s", "23rd-s", "us", "astor"],
  :o => ["59th", "50th", "ts", "34th-o", "28th-o"]
}


# Here are our methods
def dist(line_start, stop_start, stop_finish)
  x = $mta[line_start].index(stop_start)
  y = $mta[line_start].index(stop_finish)
  return (x - y).abs 
end

def stop(line)
  puts "Which Stop?"
  $mta[line].each { |x| print "( #{x} ) " }
  puts
  stop_start = gets.chomp
  return stop_start
end

def input(line)
  case line
  when :n
    return stop(:n)
  when :l
    return stop(:l)
  when :s
    return stop(:s)
  when :o
    return stop(:o)
  else
    puts "That isn't a valid line. Sorry!"
  end 
end

def to_ts(line_start, stop_start)
  return dist(line_start, stop_start, "ts")
end

# This is our user input
puts "What line do you want to get on?"
puts "( n ) ( l ) ( s ) ( o )"
line_start = gets.chomp.downcase.to_sym
stop_start = input(line_start)

puts "What line do you want to get off?"
puts "( n ) ( l ) ( s ) ( o )"
line_finish = gets.chomp.downcase.to_sym
stop_finish = input(line_finish)


# This is our brain/logic
if (line_start != line_finish) && ((line_start != :o)  && (line_finish != :o))
  to_us = dist(line_start, stop_start, "us")
  from_us = dist(line_finish, "us", stop_finish)
  puts (to_us + from_us)
elsif (line_start != line_finish) && ((line_start == :o) || (line_finish == :o))
  if line_start == :o && ((line_start != :n) || (line_finish != :n))
    to_ts = to_ts(line_start, stop_start)
    from_us = dist(line_finish, "us", stop_finish)
    puts to_ts + from_us + 4
  elsif ((line_start == :n) || (line_finish == :n))
    to_ts = to_ts(line_start, stop_start)
    from_ts = dist(line_finish, "ts", stop_finish)
    puts to_ts + from_ts
  else
    to_us = dist(line_start, stop_start, "us")
    from_ts = dist(line_finish, "ts", stop_finish)
    puts to_us + from_ts + 4
  end
else
  puts dist(line_start, stop_start, stop_finish)
end