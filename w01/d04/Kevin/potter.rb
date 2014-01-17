# FILE OPEN
f = File.open("potter.csv", "r")

# GETTING DATA
the_data = f.read

# THIS IS MY HASH METHOD 
def my_hash_maker( the_data)
  the_split = the_data.split("\n")
  new_array = the_split.map { | the_character | the_character.split(",") }
  my_hash = new_array.map { | the_character |  {:mentions => the_character[0].to_i, :name => the_character[1], :house => the_character[2]} }
end

# NUMBER ONE
def method_one( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  puts my_hash.map { | position | position[:name] }
  puts
end

# NUMBER TWO
def method_two( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  puts my_hash.select { |position| (position[:mentions] > 500) && position[:name] }
  puts
end

 # NUMBER THREE 
 def method_three( my_hash )
   puts "THIS IS THE NEXT PROBLEM"
   puts "-----------------------"
   puts my_hash.map { |position| position[:house] }.compact
   puts
 end

# NUMBER FOUR
def method_four( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  puts my_hash.select { |position| !position[:name].include? " " }
  puts
end

# NUMBER FIVE
def method_five( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  five = my_hash.select { |position| position[:house] == "Hufflepuff" }
  puts five.count
  puts
end

# NUMBER SIX
def method_six( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  six = my_hash.map do |position| 
    if  position[:house] == "Slytherin" 
      puts position[:name].reverse
    else
      puts position[:name] 
    end
  end
  puts
end

# NUMBER SEVEN
def method_seven( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  seven = my_hash.select { |position| position[:house] == "Gryffindor" }
  seven_two = seven.map {|position| position[:name].split(" ") }
  seven_three = seven_two.uniq {|position| position[1]}
  puts seven_three.map {|position| position[1]}.compact
  puts
end

# NUMBER EIGHT
def method_eight( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  eight = my_hash.select { |position| position[:name].include? "Weasley" }
  puts eight.map {|position| position[:name].gsub(" ", " Badger ")}
  puts
end

# NUMBER NINE
def method_nine( my_hash )
  puts "THIS IS THE NEXT PROBLEM"
  puts "-----------------------"
  nine = my_hash.map {|position| position[:name].split(" ") }
  nine_two = nine.map {|position| position[0].split("")}
  nine_three = nine_two.select {|position| position.pop == "y"}
  nine_four = nine_three.each {|position| position.push("y")}
  puts nine_four.map {|position| position.join}
  puts
end


# THIS IS MY DATA 
my_hash = my_hash_maker(the_data)

# THIS IS MY PROGRAM
method_one( my_hash )
method_two( my_hash )
method_three( my_hash )
method_four( my_hash )
method_five( my_hash )
method_six( my_hash )
method_seven( my_hash )
method_eight( my_hash )
method_nine( my_hash )

# FILE CLOSE
f.close