mta = {
:n => ['ts', '34th', '28th-n', '23rd-n', 'us', '8th-n'],
:l => ['8th', '6th', 'us', '3rd', '1st'],
:s => ['gc', '33rd', '28th-s', '23rd-s', 'us', 'astor']
}

puts "What line do you want to get on?"
line1 = gets.chomp

if line1 != "6"
	line1A = line1.downcase.to_sym
else
	line1A = :s
end

puts "The stops on this line are:"
mta[line1A].each do |stop|
	puts stop
end

puts "What stop you want to get on at?"
on_stop = gets.chomp
puts "What line do you want to get off?"
line2 = gets.chomp

if line2 != "6"
	line2A = line2.downcase.to_sym
else
	line2A = :s
end

if line2 == line1
	puts "The stops on this line are:"
	mta[line1].each do |stop|
		puts stop
	end
	puts "What stop do you want to get off at?"
	off_stop = gets.chomp
	total = (mta[line1A].index(off_stop) - mta[line1A].index(on_stop)).abs
	puts "The number of stops for your trip is #{total}."
else
	puts "The stops on this line are:"
	mta[line2A].each do |stop|
		puts stop
	end
	puts "What stop do you want to get off at?"
	off_stop2 = gets.chomp
	total2 = ((mta[line1A].index('us') - mta[line1A].index(on_stop)).abs) + ((mta[line2A].index(off_stop2) - mta[line2A].index('us')).abs)
	puts "The number of stops for your trip is #{total2}."
end
