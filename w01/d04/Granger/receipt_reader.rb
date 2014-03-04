f= File.open("receipt.txt", "r")

str_rec = f.read

txt_arr = str_rec.split("\n")

p txt_arr.select{|l| l.include?("$")}

f.close