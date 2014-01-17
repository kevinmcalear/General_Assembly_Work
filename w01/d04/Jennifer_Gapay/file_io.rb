# File.open("README.md", "r") do |f|
# 	puts "Hello #{f.gets}!"
# end


f = File.new("README.md", "r")
puts "Hello #{f.read}!"
f.close

# f = File.new("README.md", "r")
# puts "Hello #{f.gets.chomp}!"
# puts "Hello #{f.gets.chomp}!"
# puts "Hello #{f.gets.chomp}!"
# f.close

# f = File.new("README.md", "r")
# puts "Hello #{f.gets.chomp}!"
# f.seek 27
# puts "Hello #{f.gets.chomp}!"
# f.close

# f = File.new("README.md", "r")
# f.each_line do |line|
# 	puts "Hello #{line.chomp}!"
# end
# f.close

## --- OPENING BELOW IN APPEND MODE -----

#(NOT WORKING - FIND OUT WHY)

# f = File.new("README.md", "a+")
# f.puts "TESTING"

# f = File.new("README.md", "r+")
# f.puts "PJ, Jeff and Yannick"

# f.close