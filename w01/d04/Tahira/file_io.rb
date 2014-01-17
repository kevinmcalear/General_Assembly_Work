f = File.new("README.md", "a+")
puts "Hello #{f.gets.chomp}!"
f.print("Tahira")
f.close