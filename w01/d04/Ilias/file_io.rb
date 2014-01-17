# f = File.new("README.md", "r")

# f.each do |line|
# puts "Hello #{line.chomp}!"
# end

# f.close

f = File.new("README.md", "a+")

f.puts "TESTING"

f.close