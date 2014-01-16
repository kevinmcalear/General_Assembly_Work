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
