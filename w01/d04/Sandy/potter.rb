


f = File.new("potter.csv", "r+") do |f| 

columns = f.readline.chomp.split(',')

content = File.readlines("potter.rb")
  potter_list = []
   until f.eof?
    row = f.readline.chomp.split(',')
    row = columns.zip(row).flatten
    table <<Hash[90]
   end

   return potter_list
 end
end

f.close


