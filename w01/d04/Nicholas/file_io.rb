f = File.new("README.md", "r")

#puts "Hello #{f.read}!"
f.each_line {|line| puts  "#{line.chomp}"}

f.close

f = File.new("README.md", "a+")
  f.puts "and by legal order, let's add more info!"
f.close

#f = File.new("README.md", "w")
#  f.puts "and by legal order, let's add more info!"
#f.close