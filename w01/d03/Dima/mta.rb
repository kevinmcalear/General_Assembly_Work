mta =
{ :n => ['ts', '34th', '28th-n', '23rd-n', 'us'],
  :l => ['8th', '6th', 'us', '3rd', '1st']
}
def stop_counter(line1, line2, start, finish, mta)
  if line1 == line2
    x = line1.index(start)
    y = line1.index(finish)
    dist = (x - y).abs
    puts "You'll have to go #{dist} stops"
  else
    x = (mta[line1].index(start) - mta[line1].index("us")).abs
    y = (mta[line2].index("us") - mta[line2].index(finish)).abs
    dist = (x + y)
    puts "You'll have to go #{dist} stops"
  end
end



  puts "What line do you want to get on at? Please enter: N or L "
  line_start = gets.chomp.downcase.to_sym

  case line_start
  when :n
    print mta[:n]
    puts ""
    print "Where are you now? Please enter one of of options above: "
    start = gets.chomp
  when :l
    print mta[:l]
    puts ""
    print "Where are you now? Please enter one of of options above: "
    start = gets.chomp
  else
    puts "please enter L or N only"
  end

  print "What line do you want to get off at?"
  line_finish = gets.chomp.downcase.to_sym

  case line_finish
  when :n
    print mta[:n]
    puts ""
    puts "Where are you going?"
    finish = gets.chomp.downcase
  when :l
    print mta[:l]
    puts ""
    puts "Where are you going?"
    finish = gets.chomp.downcase
  end

  stop_counter(line_start, line_finish, start, finish, mta)


