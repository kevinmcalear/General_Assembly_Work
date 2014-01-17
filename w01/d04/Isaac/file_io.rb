# File.open("README.md", "r") do |f|
#   puts "Hello, #{f.gets}"
# end


# f = File.new("README.md", "r")
# puts "Hello, #{f.gets.chomp}!"
# f.seek 27
# puts "Hello, #{f.gets.chomp}!"

# f.each_line do |line|
#   puts "Hello #{line}"
# end

# f.close



f = File.new("README.md", "r")

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end

f.close

f = File.new("README.md", "a+")
  f.puts "(and by legal order, Peter)"
f.close

f = File.new("README.md", "w")
  f.puts "PJ, Jeff, and Travis"
f.close







