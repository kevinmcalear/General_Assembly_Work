# mta = {

# }


nline = ["ts", "34th", "28th-n", "23rd-n", "us"]
lline = ["8th", "6th", "us", "3rd", "1st"]

puts "What line would you like to get on?"
entryline = gets.chomp.downcase
if entryline == "n"
  n_list = nline.each {|stop| puts stop}
elsif entryline == "l"
  l_list = lline.each {|stop| puts stop}
else 
  puts "Not a stop!"
end

case entryline

when "n"
  puts "What stop would you like to get on at?"
  embark = gets.chomp
  first = nline.index(embark)

  puts "what line would you like to get off on?"
  disembark_line = gets.chomp
  if disembark_line == "n"
    puts nline
  else
    puts lline
  end

  if disembark_line != "n"
    disembark = "us"
    last = nline.index(disembark)
    first_total =(last - first).abs
    puts "What stop do you want to get off the l?"
    final = gets.chomp
    last = lline.index(final)
    start_two = lline.index("us")
    second_total = (last - start_two).abs
    puts "this trip will take you #{first_total + second_total} stops"



  else
  puts "what stop would you like to get off at?"
  disembark = gets.chomp 
  last = nline.index(disembark) 
  total =(last - first).abs
  puts "This trip will take you #{total} stops."

end

  last = nline.index(disembark)

when "l"
  puts "What stop would you like to get on at?"
  embark = gets.chomp
  first = lline.index(embark)

  puts "what line would you like to get off on?"
  disembark_line = gets.chomp
  
  if disembark_line != "l"
    disembark = "us"
    last = lline.index(disembark)
    first_total =(last - first).abs
    puts "What stop do you want to get off the n?"
    final = gets.chomp
    last = nline.index(final)
    start_two = lline.index("us")
    second_total = (last - start_two).abs
    puts "this trip will take you #{first_total + second_total} stops"

  end

  puts "what stop would you like to get off at?"
  disembark = gets.chomp
  last = lline.index(disembark)
end

  # total = (last - first).abs
  # puts "This trip will take you #{total} stops."


