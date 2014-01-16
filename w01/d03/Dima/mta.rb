mta =
{ :n => ['ts', '34th', '28th-n', '23rd-n', 'us', '8th', 'astor'],
  :l => ['8th-l', '6th', 'us', '3rd', '1st'],
  :s => ['gc', '33rd', '28th-s', '23rd-s', 'us'],
  :o => ['59th','50th','ts','34th', '28th']
}

def stop_counter(line1, line2, start, finish, mta)
  if line1 != :o && line2 != :o
    # change trains only on Union Square
    x = (mta[line1].index(start) - mta[line1].index("us")).abs
    y = (mta[line2].index("us") - mta[line2].index(finish)).abs
    dist = (x + y)
    puts "You'll have to go #{dist} stops"
  elsif (line1 == :n && line2 == :o) || (line1 == :o && line2 == :n)
  #change train only on Times Square 
  x = (mta[line1].index(start) - mta[line1].index("ts")).abs
  y = (mta[line2].index("ts") - mta[line2].index(finish)).abs
  dist = (x + y)
  puts "You'll have to go #{dist} stops"
  elsif line1 != :n && line2 != :n
    #change train on Times Square and Union Square (3 trains besides N train)
    if line1 == :s || line1 == :l # going to 1 line
      x = (mta[line1].index(start) - mta[line1].index("us")).abs
      y = (mta[line2].index("ts") - mta[line2].index(finish)).abs
      dist = (x + y) + 4
      puts "you'll have to go #{dist} stops"
    else #going from 1 line to 6 or L
      x = (mta[line1].index(start) - mta[line1].index("ts")).abs
      y = (mta[line2].index("us") - mta[line2].index(finish)).abs
      dist = (x + y) + 4
      puts "You'll have to go #{dist} stops"
    end
  else
    line1 == line2 # same line
    x = line1.index(start)
    y = line1.index(finish)
    dist = (x - y).abs
    puts "You'll have to go #{dist} stops"
  end
end


puts "What line do you want to get on at? Please enter: N or L or S for 6 or O for 1"
line_start = gets.chomp.downcase.to_sym

if mta.include?line_start
  print mta[line_start]
  puts ""
  print "What stop are you now at? Please enter one of of options above: "
  start = gets.chomp.downcase
else
  puts "please enter L or N or S or O only"
  start = gets.chomp.downcase
end

print "What line do you want to get off at?"
line_finish = gets.chomp.downcase.to_sym

if mta.include?line_finish
  print mta[line_finish]
  puts ""
  puts "Where are you going?"
  finish = gets.chomp.downcase
else
  puts "Please enter L or N or S or O only"
  finish = gets.chomp.downcase
end

stop_counter(line_start, line_finish, start, finish, mta)


