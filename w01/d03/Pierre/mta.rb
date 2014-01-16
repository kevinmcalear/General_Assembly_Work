#data: line arays
n = ['ts', '34th', '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
o = ['59th', '50th', 'ts', '34th-o', '28th-o']

mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o
#/data

#functions
def intersection(line1, line2)
  line1.each do |station|
    if line2.index(station) != nil
      return station
    end
  end
  return nil
end

def intersects?(line1, line2)
  if intersection(line1, line2) == nil
    return false
  end
  return true
end

def navigate_line(line, start_station, end_station)
  start_index = line.index(start_station)
  end_index = line.index(end_station)

  steps = (end_index - start_index).abs
end

def middle_line(subway_system, line1, line2)
  subway_system.each_key do |line|
    if intersects?(subway_system[line], line1) && intersects?(subway_system[line], line2)
      return line
    end
  end
end


#main methods


def print_lines(subway_system)
  subway_system.each_key { |line| print "  #{line}  "}
end

def print_stations(line)
  line.each { |station| print "  #{station}  "}
end

puts "\e[H\e[2J"
puts "**********************\nSubway Ride Calculator\n**********************\n\n"

puts "Select starting subway line: "
print_lines(mta)
puts ""
start_line = mta[gets.chomp.to_sym]

puts "Select station: "
print_stations(start_line)
puts ""
start_station = gets.chomp

puts "\n\nSelect ending subway line: "
print_lines(mta)
puts ""
finish_line = mta[gets.chomp.to_sym]

puts "Select station: "
print_stations(finish_line)
puts ""
finish_station = gets.chomp

ride_length = 0

if start_line == finish_line
  ride_length = navigate_line(start_station, finish_station)

else
  if intersects?(start_line, finish_line)
    xStartFinish = intersection(start_line, finish_line)
    
    ride_length += navigate_line(start_line, start_station, xStartFinish)
    ride_length += navigate_line(finish_line, xStartFinish, finish_station)

  else
    xLine = mta[middle_line(mta, start_line, finish_line)]
    xStartMiddle = intersection(start_line, xLine)
    xMiddleFinish = intersection(xLine, finish_line)

    ride_length += navigate_line(start_line, start_station, xStartMiddle)
    ride_length += navigate_line(xLine, xStartMiddle, xMiddleFinish)
    ride_length += navigate_line(finish_line, xMiddleFinish, finish_station)

  end
end

puts "Your ride is #{ride_length} stops long!"