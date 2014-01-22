# A)

a = ["Peter", "PJ", "Jeff"]

puts a[0]
a.push("Brach")
a.delete("PJ")
print a

# B)

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts h[1]
puts h[:two]
puts h["two"]
h[3] = "Three"
h[:four] = 4
h.delete(1)

# C)

is = {true => "It's true!", false => "It's false"}

puts is[2 + 2 == 4]
puts is["Peter" == "Jeff"]
puts is[9 > 10]
puts is[0]
puts is["PJ"]
puts is[false||true]
puts is[false||"Jeff"]