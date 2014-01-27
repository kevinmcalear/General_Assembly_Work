 f = File.new("README.md","r") 

# puts "Hello #{f.gets.chomp} !"
# f.seek 0
# puts
# f.close

# f.each_line do |line|
#   puts"Hello #{line.chomp} !"
# end

f = File.new("README.md","a+") 
  f.puts "TESTING"

f = File.new("README.md","r+") 
  f.puts "PJ, Jeff and Yannick"

f = File.new("README.md","w") 
  f.puts "PJ jeff and Travis"

f.close