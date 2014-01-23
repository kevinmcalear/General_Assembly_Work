correct = rand(1..10)
puts "Pick a number from 1-10"
pick = gets.chomp.to_i
count = 1

while pick != correct
  if pick > correct
    puts "Wrong number, too high!"
  else 
    puts "Wrong number, too low!"
  end
  pick = gets.chomp.to_i
  count += 1

end
puts "Lucky guess!  It only took you #{count} times."