#one line functionality
mta = {
:n => ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n'],
:l => ['8th', '6th', 'us', '3rd', '1st'],
}

puts "What line do you want to get on?"
line1 = gets.chomp.downcase.to_sym

puts "The stops on the #{line1.upcase} line are:"
mta[line1].each do |stop|
	puts stop
end

puts "What stop you want to get on at?"
on_stop = gets.chomp
puts "What line do you want to get off?"
line2 = gets.chomp.downcase.to_sym
if line2 == line1
	puts "The stops on the #{line1.upcase} line are:"
	mta[line1].each do |stop|
		puts stop
	end
	puts "What stop do you want to get off at?"
	off_stop = gets.chomp
	total = (mta[line1].index(off_stop) - mta[line1].index(on_stop)).abs
	puts "The number of stops for your trip is #{total}."
else
	puts "The stops on the #{line2.upcase} line are:"
	mta[line2].each do |stop|
		puts stop
	end
	puts "What stop do you want to get off at?"
	off_stop2 = gets.chomp
	total2 = ((mta[line1].index('us') - mta[line1].index(on_stop)).abs) + ((mta[line2].index(off_stop2) - mta[line2].index('us')).abs)
	puts "The number of stops for your trip is #{total2}."
end
