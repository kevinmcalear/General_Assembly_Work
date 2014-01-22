f = File.open("README.md", "r") 

f.each_line do |line|
    puts "Hello #{line.chomp}!"
end

f.close

f = File.new("README.md", "a+")
    f.puts "(and by legal order, Peter Lai)."
f.close

f = File.new("README.md", "w")
    f.puts "PJ, Jeff, and Travis"
f.close