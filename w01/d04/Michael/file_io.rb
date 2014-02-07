# f = File.new("README.md", "r")

# puts "Hello #{f.read}!"
# f.seek 27
# puts "Hello #{f.gets.chomp}!"

# f.close


##Iterates through the entire text file and puts and a value
# f = File.new("README.md", "r")

# f.each_line do |line|
# 	puts "Hello #{line_chomp}!"
# end

# f.close


##Open in Append mode
# f = File.new("README.md", "a+")

# f.each_line do |line|
# 	puts "Hello #{line_chomp}!"
# end

# f.close


##Modify the source filef = File.new("README.md", "r")

f.each_line do |line|
	fputs "Hello #{line_chomp}!"

end

f.close


##



