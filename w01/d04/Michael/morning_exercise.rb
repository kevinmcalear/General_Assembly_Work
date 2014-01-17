a = ["Peter","PJ","Jeff"]

# 1. How would you return the string "Peter"?
puts a[0]
# 2. How would you add your name to the array?
a.push ("New Name")
a << "New Name"
# 3. How would you remove "PJ" from the array
a.pop 2
a.delete("PJ")

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string "One"?
h[1]
# 2. How would you return the string "Two"?
h[:two]
# 3. How would you return the number 2?
h['two']
# 4. How would you add {3 => "Three"} to the hash?
h [3] = "three"
# 5. How would you add {:four => 4} to the hash?
h [:four] = 4
# 6. How would you remove {1 => "One"} from the hash?
h.delete (1)

is = {true => "It's true!", false => "It's false"}

# 1. What is the return value of is[2 + 2 == 4]?
"It's true!"
# 2. What is the return value of is["Peter" == "Jeff"]?
"It's false"
# 3. What is the return value of is[9 > 10]?
"It's false"
# 4. What is the return value of is[0]?
nil ##not a key in the hash
# 5. What is the return value of is["PJ"]?
nil ##not a key in the hash
# 6. What is the return value of is[false||true]?
"It's true!"
# 7. What is the return value of is[false||"Jeff"]?
nil  # false||"Jeff" evaluates to "Jeff"--> There is no key "Jeff"




##Discussion on Logic

"PJ" || true

true && "No"

"No" && true