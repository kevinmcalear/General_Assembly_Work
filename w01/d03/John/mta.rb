mta = {
  :n => ["ts", "34th", "28th-n", "23rd-n", "us", "8th"],
  :l => ["8th", "6th", "us", "3rd", "1st"],
  :s => ["gc", "33rd", "28th-s", "23rd-s", "us", "as"]
}

def print_stops(mta, line)
  print "For line #{line}, the stops are: "
  mta[line].each do |stop| 
    print "#{stop} "
  end
end


puts "What stop do you want to get on? "
print_stops(mta, :n)
puts
begin_trip = gets.chomp
puts "What stop do you want to get off? "
print_stops(mta, :n)
puts
end_trip = gets.chomp

begin_index = mta[:n].index(begin_trip)
end_index = mta[:n].index(end_trip)

total_stops = (begin_index - end_index).abs

puts "The length of that trip is #{total_stops}."