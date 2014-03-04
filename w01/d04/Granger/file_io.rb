
# f= File.new("README.md", "r")  

# a = IO.readlines("README.md").each do |i|
#   puts "Hello #{i.chomp}!"
# end



f= File.new("README.md", "a+") 
f.puts "ADDition"
f.close 

# File.readlines("README.md").each do |line|
#   puts "Hello #{line.chomp}!"
# end