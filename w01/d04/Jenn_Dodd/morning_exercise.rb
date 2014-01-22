a = ["Peter", "PJ", "Jeff"]

puts a[0]

puts a.push("Jenn")

a.delete("PJ")
puts a

#-------------------

h = { 0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts h[1]
puts h[:two]
puts h["two"]
h[3] = "Three"
h[:four] = 4
h.delete(1)


#------------------

is = {true => "It's true!", false => "It's false"}

puts is[2 + 2 == 4]
true
puts is["Peter" == "Jeff"]
false
puts is[9 > 10]
false
puts is[0]
nil
#value in the brackets isn't a key
puts is["PJ"]
nil
#value in the brackets isn't a key
puts is[false||true]
true
puts is[false||"Jeff"]
nil
#The or operator will return the first truthy value it sees
#Not the truthiest
#the and operator will return the last truth




