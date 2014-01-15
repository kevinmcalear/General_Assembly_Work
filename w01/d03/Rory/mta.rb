#one line functionality
$N = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
$L = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
puts "The stops on the N line are: "

$n.each do |stop|
	puts stop
end

def num_of_stops
	puts "What stop you want to get on at?"
	on_stop = gets.chomp
	puts "What stop do you want to get off at?"
	off_stop = gets.chomp
	total = ($N.index(off_stop) - $N.index(on_stop)).abs
	puts "The number of stops for your trip is #{total}."
end

num_of_stops