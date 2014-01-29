puts "FEED YOUR HEAD!!!"

# = File.open("README.md", "r") 

  

#or do this to open/create a new file:
# f  = File.new("README.md", "r")

# puts "Hello #{f.gets.chomp}"
# f.rewind # returns it to the beginning or use f.seek 0 to go to a specific line in the file
# puts "Hello #{f.gets.chomp}"
# f.close

#or


f = File.new("README.md", "r")

f.each_line  do  |line|
  puts "Hello #{line}"
end

f.close

f = File.new("README.md", "a+")
    f.puts "By order of the judge"
f.close


f = File.new("README.md", "w")
    f.puts "By order of the judge"
f.close
