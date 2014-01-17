a = ["Peter", "PJ", "Jeff"]

puts a[0]
puts
a.push("John")
puts a
puts
a.delete("Peter")
puts a
puts

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts h[1]
puts

puts h[:two]
puts

puts h["two"]
puts

h[3] = "Three"
puts h
puts

h[:four] = 4
puts h
puts

h.delete(1)
puts h
puts

is = {true => "It's true!", false => "It's false"}

puts is[2 + 2 == 4]
puts "1) It's true!"
puts

puts is["Peter" == "Jeff"]
puts "2) It's false"
puts

puts is[9 > 10]
puts "3) It's false"
puts

puts is[0]
puts "4) nil"
puts

puts is["PJ"]
puts "5) nil"
puts

puts is[false || true]
puts "6) It's true"
puts

puts is[false || "Jeff"]
puts "7) nil"



question = %w([2 + 2 == 4], ["Peter" == "Jeff"], [9 > 10], [0], ["PJ"], [false || true], [false || "Jeff"])
answer = %w(true, false, false, true, true, true, true)

for i in (0..6)
  puts is[question[i]]
  puts answer[i]
end
