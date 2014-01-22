f = File.open("potter.csv", "r")
values = f.read
values = values.gsub("\n","~")
values = values.split("~")
values = 
values = values.map {|line| line.split(",")}

def all_names(values)
  values.each do |x|
    if x[0].to_i > 500
      puts x[1]
    end
  end
end
all_names(values)
puts "\n"

def houses(values)
  houses = values.map { |house| house[2] }
  houses = houses.compact
  puts houses.uniq
end

houses(values)
puts "\n"

def one_word_names(values)
  names = values.map {|names| names }
  names = names.delete_if {|names| names[1].include?(" ")}
  names.each {|info| puts info.to_s}
end

one_word_names(values)
puts "\n"

def hufflepuffs(values)
  i = 0
  values.each do |house|  
    if house[2] == "Hufflepuff"
      i += 1
    end
  end
  puts i
end

hufflepuffs(values)
puts "\n"

def reversed_slytherin(values)
  slytherin_reverse = values.map do |info|
    if info[2] == "Slytherin"
      info[1].reverse
    else
      info[1]
    end
  end
  puts slytherin_reverse
end

reversed_slytherin(values)
puts "\n"

def houses(values)
  houses = values.map { |house| house[2] }
  houses = houses.compact
  puts houses.uniq
end

def gryffindor_last_names(values)
  gryffindor_only = values.select do |person|
    person[2]=="Gryffindor"
  end
  gryffindor_only = gryffindor_only.map do |person|
    person[1].split.last
  end

  puts gryffindor_only.uniq
end
gryffindor_last_names(values)
puts "\n"

def weasleys(values)
weasleys = values.select do |person|
  person[1].include?("Weasley")
end

weasleys = weasleys.map do |person|
  person[1]
end

weasleys.each do |person|
  puts person.gsub("Weasley", "Badger Weasley")
end
end

weasleys(values)
puts "\n"

both_names = values.select do |person|
  person[1].split(" ")[0].end_with?("y")
end

first_names = both_names.map do |person|
  person[1].slice(0..(person[1].index('y')))
end

puts first_names


f.close


