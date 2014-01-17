# File.open("README.md", "r") { |f| puts "Hello #{f.gets}" }

f = File.new("README.md", "r")
# f.each_line do |line|
#   puts "Declared, #{line.chomp}!"
# end
# f.close

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end

f.close

f = File.new("README.md", "a+")
f.write("(Peter, by legal order)")
f.close

f = File.new("README.md" "w")
f.puts("PJ, Jeff, Travis")
f.close