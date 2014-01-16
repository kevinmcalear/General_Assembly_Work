puts "What line do you want to get on? (N) or (L)?"
line = gets.chomp

mta = {
  :n=> ["ts", "34th", "28th-n", "23rd-n", "23rd-n", "us"],
  :l=> ["8th", "6th", "us", "3rd", "1st"],
  :s=> [ "gc", '33rd', '28th-s', "23rd-s", "us"]
}

while true == true
  if line == "L"
    puts "What stop are you getting on?
         For 8th St, enter 8th
         For 6th St, enter 6th
         For Union Square, enter US"
    begin_trip = gets.chomp.downcase
    
    puts "What stop are you getting on?
         For 8th St, enter 8th
         For 6th St, enter 6th
         For Union Square, enter US"
    end_trip = gets.chomp.downcase

  startindex = mta[line].index(begin_trip)
  endindex = mta[line].index(end_trip)
  stop_num = endindex.to_i - startindex.to_i
  puts "You have #{stop_num.abs} left!"
end

  if line == "N"
    puts "What stop are you getting on?"
    puts "for Time Square, enter TS 
         for 34th St, enter 34th
         for 28th St, enter 28th-n
         for Union Square, enter US" 
     begin_trip = gets.chomp.downcase
     puts "What stop do you want to get off"
     puts  "for Time Square, enter TS 
        for 34th St, enter 34th
        for 28th St, enter 28th-n
        for Union Square, enter US" 
     end_trip = gets.chomp.downcase

  startindex = mta[line].index(begin_trip)
  endindex = mta[line].index(end_trip)
  stop_num = endindex.to_i - startindex.to_i
  puts "You have #{stop_num.abs} left!"
 end
end

