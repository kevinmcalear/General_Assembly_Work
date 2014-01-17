f = File.new("potter.csv", "r+") 

potter_name = []
File.read(f).each_line do |line|
  potter_name << line.chomp
end
potter_name.each {|name| puts potter_name[1]}

f.close


