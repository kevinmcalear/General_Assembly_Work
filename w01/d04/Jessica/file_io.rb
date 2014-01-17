# File.open("README.md", "r") do |f|
#   puts "Hello #{f.gets}"
# end

f = File.new("README.md", "r")

f.each_line do |line|
     puts "Hello #{line.chomp}!"
end

f.close

f = File.new("README.md", "r+")
  f.puts "TESTING"
f.close

f = File.new("README.md", "w")
  f.puts "PJ, Jeff, and Travis"
f.close