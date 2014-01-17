mta = {
:n => ["ts", "34th", "28th-n", "23rd-n", "us"],
:l => ["8th", "6th", "us", "3rd", "1st"],
:s => ["gc", "33rd", "28th-s", "23rd-s", "us"]
}

puts "Which train do you want to get on? (n, l, s)"
line = gets.chomp.downcase.to_sym

case line
when :n
puts "Which stop do you want to get on at? (ts, 34th, 28th-n, 23rd-n, us)?"
get_on = gets.chomp
puts "Which line do you want to get off at? (n, l, s)"
line_off = gets.chomp.to_sym
   if line_off == :n
    puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
    get_off_n = gets.chomp
    stops_traveled = (mta[:n].index(get_on) - mta[:n].index(get_off_n)).abs
    puts "You traveled #{stops_traveled} stops!"
  elsif line_off == :l
    puts "Which stop do you want to get off at? (8th, 6th, us, 3rd, 1st)"
    get_off_l = gets.chomp
    stops_traveled = ((mta[:n].index(get_on) - mta[:n].index("us")).abs) + ((mta[:l].index(get_off_l) - mta[:l].index("us")).abs)
    puts "You traveled #{stops_traveled} stops!"
  else
    puts  "Which stop do you want to get off at? (gc, 33rd, 28th-s, 23rd-s, us)"
    get_off_s = gets.chomp
    stops_traveled = ((mta[:n].index(get_on) - mta[:n].index("us")).abs) + ((mta[:s].index(get_off_s) - mta[:s].index("us")).abs)
    puts "You traveled #{stops_traveled} stops!"
  end
  when :l
    puts "Which stop do you want to get on at? (8th, 6th, us, 3rd, 1st)?"
    get_on_l = gets.chomp
    puts "Which line do you want to get off at? (n, l, s)"
    line_off = gets.chomp.to_sym
      if line_off == :n
        puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
        get_off_n = gets.chomp
        stops_traveled = ((mta[:l].index(get_on_l) - mta[:l].index("us")).abs) + ((mta[:n].index(get_off_n) - mta[:n].index("us")).abs)
        puts "You traveled #{stops_traveled} stops!"
      elsif line_off == :l
        puts "Which stop do you want to get off at? (8th, 6th, us, 3rd, 1st)"
        get_off_l = gets.chomp
        stops_traveled = (mta[:l].index(get_on) - mta[:l].index(get_off_n)).abs
        puts "You traveled #{stops_traveled} stops!"
      else
        puts  "Which stop do you want to get off at? (gc, 33rd, 28th-s, 23rd-s, us)"
        get_off_s = gets.chomp
        stops_traveled = ((mta[:l].index(get_on) - mta[:l].index("us")).abs) + ((mta[:s].index(get_off_s) - mta[:s].index("us")).abs)
        puts "You traveled #{stops_traveled} stops!"
      end
  when :s
    puts "Which stop do you want to get on at? (gc, 33rd, 28th-s, 23rd-s, us)"
    get_on_s = gets.chomp
    puts "Which line do you want to get off at? (n, l, s)"
    line_off = gets.chomp.to_sym
      if line_off == :n
        puts "Which stop do you want to get off at? (ts, 34th, 28th-n, 23rd-n, us)?"
        get_off_n = gets.chomp
        stops_traveled = ((mta[:s].index(get_on_s) - mta[:s].index("us")).abs) + ((mta[:n].index(get_off_n) - mta[:n].index("us")).abs)
        puts "You traveled #{stops_traveled} stops!"
      elsif line_off == :l
        puts "Which stop do you want to get off at? (8th, 6th, us, 3rd, 1st)"
        get_off_l = gets.chomp
        stops_traveled = ((mta[:s].index(get_on_s) - mta[:s].index("us")).abs) + ((mta[:l].index(get_off_l) - mta[:l].index("us")).abs)
        puts "You traveled #{stops_traveled} stops!"
      else
        puts  "Which stop do you want to get off at? (gc, 33rd, 28th-s, 23rd-s, us)"
        get_off_s = gets.chomp
        stops_traveled = (mta[:s].index(get_on_s) - mta[:s].index(get_off_s)).abs
        puts "You traveled #{stops_traveled} stops!"
      end
else
    puts "error"
end




