File.open("README.md", "r") do |f|
    puts "Hello #{f.gets}!"
  end

  # "r" stands for read, to give you reading permission in the file
  # you could also use "w" to write or "d" to delete

f = File.new("README.md", "r")

  puts "Hello #{f.gets}!"

f.close 

#where File.open will automatically close the File, in f.new, you need to close it, f.new


# f = File.new("README.md", "r")

#   place = f

# while place != EOF

#   puts "Hello #{f.gets.chomp}!"

# end

# f.close 

#also

f = File.new("README.md", "r")

f.each_line do |line|
  puts "Hello #{line.chomp}!"

end

f.close 




#Append mode

f = File.new("README.md", "r+")

  puts "testing"

f.close


f = File.new("README.md", "r+")

  puts "testing"

f.close


f = File.new("README.md", "a+")

  f.puts "stuff"
f.close



#JEFF'S CODE

f = File.new("README.md", "r")

f.each_line do |line|
  puts "Hello #{line.chomp}!"
end

f.close

f = File.new("README.md", "a+")
  f.puts "(and by legal order, Peter)"
f.close

f = File.new("README.md", "w")
  f.puts "PJ, Jeff, and Travis"
f.close








