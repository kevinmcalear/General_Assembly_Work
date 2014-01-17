# PART A

a = ["Peter", "PJ", "Jeff"]

puts a[0]

a.push("Kevin")

a.delete("PJ")


# PART B

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts h[1]

puts h[:two]

puts h["two"]

h[3] = "Three"

h[:four] = 4

h.delete(1)


# PART C

is = {true => "It's true!", false => "It's false"}


puts is[2 + 2 == 4] == "It's true!"

puts is["Peter" == "Jeff"] == "It's false"

puts is[9 > 10] == "It's false"

puts is[0] == nil

puts is["PJ"] == nil

puts is[false||true] == "It's true!"

puts is[false||"Jeff"] == nil