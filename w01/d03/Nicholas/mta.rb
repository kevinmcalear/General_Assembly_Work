n_line = ["Times Square", "34th", "28th-n", "23rd-n", "Union Square", "8th"]
l_line = ["8th", "6th", "Union Square", "3rd", "1st"]


puts "What line would you like to get on?"
entryline = gets.chomp.downcase
if entryline == "n"
  n_list = n_line.each {|stop| puts stop}
elsif entryline == "l"
  l_list = l_line.each {|stop| puts stop}
else
  print "Not a stop"
end

case entryline

when "n"
  puts "What stop would you like to get on at?"
  embark = gets.chomp
  first = n_line.index(embark)

  puts "what line would you like to get off on?"
  disembark_line = gets.chomp
  if disembark_line == "n"
    puts n_line
  else
    puts l_line
  end

  if disembark_line != "n"
    disembark = "Union Square"
    last = n_line.index(disembark)
    first_total = (last - first).abs
    puts "What stop would you like to get off at?"
    final = gets.chomp
    last = l_line.index(final)
    start_two = l_line.index("Union Square")
    second_total = (last - start_two).abs
    puts first_total + second_total
  else
  puts "What stop would you like to get off on?"
  disembark = gets.chomp
  last = n_line.index(disembark)
  total = (last - first).abs
  puts "This trip will take you #{total} stops."
  end

when "l"
  puts "What stop would you like to get on at?"
  embark = gets.chomp
  first = l_line.index(embark)

  puts "what line would you like to get off on?"
  disembark_line = gets.chomp

  if disembark_line != "l"
    disembark = "Union Square"
    last = l_line.index(disembark)
    first_total = (last - first).abs
    puts "What stop would you like to get off at?"
    final = gets.chomp
    last = n_line.index(final)
    start_two = n_line.index("Union Square")
    second_total = (last - start_two).abs
    puts first_total + second_total
  else
  puts "What stop would you like to get off on?"
  disembark = gets.chomp
  last = l_line.index(disembark)
  total = (last - first).abs
  puts "This trip will take you #{total} stops."
  end
end



