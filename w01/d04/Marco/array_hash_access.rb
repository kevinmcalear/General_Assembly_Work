a = ["Peter", "PJ", "Jeff"]

puts "1. #{a[0]}" 
puts "2. #{a.push("Marco")}" # shovel method also pushes  a << "Quincy"
puts "3. #{a.delete("PJ")}" 
puts a

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts
puts "1. #{ h[1] }"
puts "2. #{ h[:two] }"
puts "3. #{ h["two"] }"
puts "4. #{ h[3] = "Three" }"
puts "5. #{ h[:four] = 4 }"
puts "5. #{ h.delete(1) }"
puts h

is = {true => "It's true!", false => "It's false"}

puts
puts is[2 + 2 == 4] #true
puts is["Peter" == "Jeff"] #false
puts is[9 > 10] #false
puts is[0] #true >> wrong answer...nil! bc this integet doesn't exist as true or false
puts is["PJ"] #nil  >> "PJ" is not one of the keys, true or false
puts is[false||true] #true
puts is[false||"Jeff"] #true >> wrong answer....nil, again!

albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

#write a loop that types "I <3" album name"

albums.each do |variable|

  puts "I <3 #{variable}"
  

end

#ALSO

i = 0

until i == albums.count

  puts "I <3 #{albums[i]}"
  i += 1

end

#write a method called .each that loops 

def i_love_each_of (albums)

  x = 0

  until x == albums.length

  puts "I <3 #{albums[x]}"
  x += 1

end

end


i_love_each_of ( albums )


#write a method that takes a block as an argument & takes a collection as an argument, 
#loops over that collection in reverse order and apply a behavior to each element of that collection

def method(collection)

  i = collection.length - 1
   while i >= 0

    yeild collection[i]
    i - 1

  end

end




















