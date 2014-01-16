puts "What weekday is today? (otherwise type 'exit')"
day = gets.chomp.downcase

i = 0

while day != "exit"

if i > 0
puts "What weekday is today? (otherwise type 'exit')"
day = gets.chomp.downcase
end

i=+1

case day
when "monday"
  puts "Manly Monday"
when "tuesday"
  puts "Tie Tuesday"
when "wednesday"
  puts "Windsor Wednesday"
when "thursday"
  puts "Thoughtful Thursday"
when "friday"
  puts "Fancy Friday"
else
  puts "Sorry try that again..."
end
end
exit

