# File.open("README.md", "r") do |f|
# puts "Hello #{f.gets}!"
# end
#File.open("README.md", "r") {|f| puts "Hello #{f.gets}!"}



# f = File.new("README.md", "r") 

# puts "Hello #{f.gets.chomp}!"
# puts "Hello #{f.gets.chomp}!"

# f.close 



f = File.new("README.md", "r") 

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end

f.close 

f = File.new("README.md", "a+") 
f.puts "(and by legal order Peter)"
f.close

f = File.new("README.md", "w") 
f.puts "PJ, Jeff, and Travis"
f.close

