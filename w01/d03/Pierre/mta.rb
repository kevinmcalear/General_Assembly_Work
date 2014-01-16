#data: line arays
n = ['ts', '34th' '28th-n', '23rd-n', 'us']
l = ['8th', '6th', 'us', '3rd', '1st']
s = ['gc', '33rd', '28th-s', '23rd-s', 'us']
o = ['59th', '50th', 'ts', '34th-o', '28th-o']

mta = {}
mta[:n] = n
mta[:l] = l
mta[:s] = s
mta[:o] = o
#/data

#functions
def find_intersection(subway_system)

end

def navigate_line(line, start_station, end_station)
  start_index = line.index(start_station)
  end_index = line.index(end_station)

  steps = (end_index - start_index).abs
end



#main methods
def select_line()
  puts "Select starting subway line: "

end
