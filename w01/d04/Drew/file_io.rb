
# |f| represents the file and can be named anything. we then put in f.gets

#File.open("README.md", "r") do |f|
  #puts "Hello #{f.gets}"
#end

f = File.new("README.md", "r")

puts "Hello #{f.gets}!"
# f.rewind both reprint the first line - f is a pointer 
# f.seek 0 

# could also have done 
# f.each_line do |line|
#   puts "Hello #{line.chomp}!"
#end
# line has already been defined in ruby-docs 

f.close

f = File.new("README.md", "a+")
  f.puts "(and by legal order, Peter)"
f.close
# this writes to the file. my file now has "and by legal order, Peter in it"

#rewrite a file. deletes the old file and creates a new one to work with
f = File.new("README.md", "w")
  f.puts "PJ, Jeff, and Travis"
f.close