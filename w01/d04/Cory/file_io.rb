f = File.new("README.md", "r") 
  
  puts "Hello world! #{f.gets.chomp}!"
  puts "Hello world! #{f.gets.chomp}!"

f.close


f = File.new("README.md", "r") 
 f.each_line do |line| 
  puts "Hello world! #{line.chomp}!"
end

f.close


f = File.new("README.md", "a+") 
  f.puts "TESTING"

f.close

f = File.new("README.md", "w") 
  f.puts "TESTING W"
  
f.close
