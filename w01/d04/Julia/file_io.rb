#File.open("README.md", "r") {|f| puts "Hello #{f.gets}!"}

f = File.new("README.md", "r")

puts "Hello #{f.readline}"

f.close

f = File.new("README.md", "a+")
	f.puts "(and by legal order, Peter)"
f.close