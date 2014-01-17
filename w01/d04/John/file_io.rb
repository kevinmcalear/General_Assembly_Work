
# f = File.new("README.md", "r")
# 
# f.each_line do |line|
  # puts "hi #{line.chomp}!"
# end

# f.seek 3
# puts "hi #{f.gets.chomp}!"

# f.close

# OR

# f = File.new("README.md", "w")
  # f.puts "TESTING"
# f.close


# File.open("README.md", "r") { |f| puts "Hello #{f.gets}" }

# puts "hey everybody!"

f = File.new("README.md", "r")
  puts f.read
f.close