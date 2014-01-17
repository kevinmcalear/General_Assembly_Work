a = ["Peter", "PJ", "Jeff"]
a[0]
a.push("Nicholas")
a.delete("PJ")
puts a
puts

h = {0 => "Zero", 1=> "One", :two => "Two", "two" => "2"}
puts h[1]
puts h[:two]
puts h["two"]
h[3] = "three"
h[:four] = 4
h.delete(1)
puts h
puts

is = {true => "It's true!", false => "It's false"}

puts is[2+2 == 4]
puts is["Peter" == "Jeff"]
puts is[9 > 10]
puts is[0]
puts is["PJ"]
puts is[false || true]
puts is[false || "Jeff"]


