f = File.new("README.md", "r")

puts "Hello #{f.read}!"
f.seek 27
puts "Hello #{f.gets.chomp}!"

f.close
