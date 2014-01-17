
# # File.open("README.md", "r") { |f| puts "Hello #{f.gets}!"}

# f = File.new("README.md", "r")

# puts "Hello #{f.gets.chomp}!"
# puts "Hello #{f.gets.chomp}!"

# f.close

# # f = File.new("README.md", "r")

# # puts "Hello #{f.read.chomp}!"

# # f.close

f = File.new("README.md", "r")

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end
f.close

f = File.new("README.md", "a+")
  f.puts "and you too!"
  f.close