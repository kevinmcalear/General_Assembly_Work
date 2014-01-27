require 'pry'

# Open the file 

f = File.new("potter.csv", "r")

# Figure out how to store the data

f.each_line do |line|
  index = line.split(",")
      i = 0
      info ={}
  index.each do |item|
    if i == 0
        info["mentions"] = item
        i += 1
    elsif i == 1
        info["name"] = item
        i += 1
    else
      info["house"] = item
      potter_csv[] = info
        i += 1
        binding.pry
    end
  end
end

potter_csv = {}

