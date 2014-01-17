# read mode
f = File.new("README.md", "r")

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end

f.close

# can also be:
# File.open("README.md", "r") do |f|
#   f.each_line do |line|
#     puts "Hello #{line.chomp}!"
#   end
# end

# append mode
f = File.new("README.md", "a+")
  f.puts "(and by legal order, Peter)"
f.close

# overwrite mode
f = File.new("README.md", "w")
  f.puts "PJ, Jeff, and Travis"
f.close

# for modes, see: http://www.ruby-doc.org/core-2.1.0/IO.html#method-c-new-label-IO+Open+Mode