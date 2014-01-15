n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']

def stop_counter(line1, line2, start, finish)
  if line1 == line2
    x = line1.index(start)
    y = line1.index(finish)
    dist = (x - y).abs
    puts "You'll have to go #{dist} stops"
  else
    x = (line1.index(start) - line1.index("us")).abs
    y = (line2.index("us") - line2.index(finish)).abs
    dist = (x + y)
    puts "You'll have to go #{dist} stops"
  end
end



  puts "What line do you want to get on at? Please enter: N or L "
  line_start = gets.chomp.downcase

  case line_start
  when "n"
    print n
    line1 = n
    puts ""
    print "Where are you now? Please enter one of of options above: "
    start = gets.chomp
  when "l"
    print l
    line1 = l
    puts ""
    print "Where are you now? Please enter one of of options above: "
    start = gets.chomp
  else
    puts "please enter L or N only"
  end

  print "What line do you want to get off at?"
  line_finish = gets.chomp.downcase

  case line_finish
  when "n"
    print n
    line2 = n
    puts ""
    puts "Where are you going?"
    finish = gets.chomp.downcase
  when "l"
    print l
    line2 = l
    puts ""
    puts "Where are you going?"
    finish = gets.chomp.downcase
  end

  stop_counter(line1, line2, start, finish)


