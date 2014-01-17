
# PRINTS NAME ONLY
require 'csv'
csv = CSV.read('potter.csv', :headers => true, :header_converters => :symbol)
print csv[:names]


#VARIOUS TESTS

# print csv[:mentions].select {|num| num.to_i >500}

# def get_num_mentions(csv)
#   i = 0
#   names_over_500 = []
# while i < csv[:mentions].count
#     csv[:mentions][i].to_i
#   if csv[:mentions][i].to_i >= 500
#     names_over_500.push(csv[:names][i])
#   end
#   i+=1
# end
# print names_over_500
# end

# get_num_mentions(csv)

#--- test ------
# def csv(file)
# 	f = File.new("potter_sample.csv", "r+")

# 	do|f|
# 		columns = f.readline.chomp.split(',')

# 		content = File.read("potter.rb")
# 		potter_list = []
# 		until f.eof?
# 			row = f.readline.chomp.split(',')
# 			row = columns.zip(row.flatten
# 				tale <<Hash[*90])
# 		end

# 		return columns, table
# 	end
# end

