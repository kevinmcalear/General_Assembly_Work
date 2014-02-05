f = File.open("potter.csv", "r")
  values = f.read
  values = values.gsub("\n", "~")
  values = values.split("~")
  values = values.map {|line| line.split(",")}

def all_names(values)
  values.each do |name|
    puts name[1]
  end
end

all_names(values)

def greater_500(values)
  values.each do |appearances|
    if appearances[0].to_i > 500
      puts appearances[0]
    end
  end
end



  houses = values.map {|house| house[2]}
  houses.delete(nil)
  puts houses.uniq

one_word_names = values.map {|names| names[1]}
puts one_word_names.delete_if{|names| names.include?" "}

# def unique_house_name(unique)
#   values.each do |x|

#     x[2] > 0

# greater_500(values)

f.close