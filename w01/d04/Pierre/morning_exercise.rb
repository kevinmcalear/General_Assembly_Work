a = ["Peter", "PJ", "Jeff"]
#1. How would your return the string "Peter"?
puts a[0]
#2. How would you add your name to the array?
a.push("Pierre")
#3. How would you remove "PJ" from the array?
a.delete("PJ")

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
#1. How would you return the string "One"
puts h[1]
#2. How would you return the string "Two"
puts h[:two]
#3. How would you return the number 2
puts h["two"]
#4. How would you add {3 => "Three"} to the hash
h[3] = "Three"
#5. How would you add {:four => 4} to the hash?
h[:four] = 4
#6. How would you remove {1 => "One"} from the hash?
h.delete(1)

is = {true => "It's true!", false => "It's false"}
#1. What is the return value of is[2+2 == 4]?
is[2+2 == 4] # should return "It's true!"
#2. What is the return value of is["Peter" == "Jeff"]?
is["Peter" == "Jeff"] #should return "It's false!"
#3. What is the return value of is[9>10]?
is[9>10] #shoud return "It's false!"
#4. What is the return value of is[0]
is[0] #should return "It's true!"
#5. What is the return value of is["PJ"]?
is["PJ"] #should return "It's true!"
#6. What is the return value of is[false||true]
is[false||true] #should return "It's true!"
#7. What is the return value of is[false||"Jeff"]?
is[false||"Jeff"] #should return "It's true!"