
##DATA: MTA stops for each line##
mta = {
  :n => ['ts', '34th', '28th', '23rd', 'us', '8th'],          # N line
  :l => ['8th', '6th', 'us', '3rd', '1st'],                        # L line
  :s => ['gc', '33rd', '28th', '23rd', 'us', 'astor'],        # 6 line
  :o => ['59th', '50th', 'ts', '34th']
}

##Method##
def stop_counter(line1, line2, start, finish, mta)
  if line1 == line2                                                   # Change of train
    x = mta[line1].index(start)
    y = mta[line1].index(finish)
    dist = (x - y).abs
    return dist
  else                                                                      # No change of train
    x = (mta[line1].index(start) - mta[line1].index("us")).abs
    y = (mta[line2].index("us") - mta[line2].index(finish)).abs
    dist = (x + y)
    return dist
  end
end

puts "What line do you want to ride on? N L or S?"    #Q1
first_line = gets.chomp.downcase.to_sym
if mta.include?(first_line)
  puts "What stop are you at now? #{mta[first_line]}"  #Q2
  first_stop = gets.chomp.downcase
else
  puts "Sorry didn't get that..."                                   # Error case
  first_stop = gets.chomp.downcase
end

puts "What line do you want to get off on? N L or S?" # Q3
second_line = gets.chomp.downcase.to_sym
if mta.include?(second_line)
  puts "What stop you do want to arrive at? #{mta[second_line]}" #Q4
  last_stop = gets.chomp.downcase
else
  puts "Sorry didn't get that..."                                   # Error case
  second_line = gets.chomp.downcase.to_sym
end

## Assignment of Method to Var ##
stops = stop_counter(first_line, second_line, first_stop, last_stop, mta)

##Method call, aka Output##
puts "You are traveling #{stops} stops."



