f = File.new("README.md", "r") 
f.each_line { | line | puts "Hello #{line.chomp}!" }

f.close

f = File.new("README.md", "a+")
  f.puts "SUP YO"
f.close

f = File.new("README.md", "w")
  f.puts "Kevin McAlear"
f.close