n = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
l = ["8th Ave", "6th Ave", "Union Square", "3rd Ave", "1st Ave"]
six = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]
	
	start_line = []
	puts "What line are you starting on? n, l, or 6?"
	start_line = assign_line(n,l,six)
	
	puts "Pick the starting stop."
	
	start_num = print(start_line)

	puts "What line are you ending on? n, l, or 6?"
	
	end_line = assign_line(n,l,six)

	puts "Pick the end stop."
	
	end_num = print(end_line)
	
	if (start_line == end_line)
		stops = (end_num-start_num).abs
	else
		stops = (end_num - end_line.index("Union Square")).abs + (start_num - start_line.index("Union Square")).abs
	end

	puts "You are #{stops} stop(s) away!"

def print(the_line)
	the_line.each do |stop|
		puts stop

	end
	stop_name = gets.chomp
	stop_num = the_line.index(stop_name)
	stop_num
end

def assign_line(n,l,six)
	case gets.chomp
		when "n"
			the_line = n
		when "l"
			the_line = l
		when "6"
			the_line = six
	end
	the_line
end