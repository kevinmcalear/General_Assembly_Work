File.open("README.md", "r") do |f|
	puts "Hello #{f.gets.chomp}!"
end

File.open("README.md", "r") do |f|
	puts "Hello #{f.read}!"
end

File.open("README.md", "r") do |f|
	puts "Hello #{f.gets.chomp}!"
	puts "Hello #{f.gets.chomp}!"
	puts f.gets
	puts f.gets
	puts f.gets
end

f = File.new("README.md", "r") 

f.each_line do |line|
	puts "Hello #{line.chomp}!"
end

f.close


f = File.new("README.md", "a+") 

f.puts "And super awesome stuff."

f.close

f = File.new("README.md", "w") 
	f.puts "PJ, Jeff, and Travis"
f.close

