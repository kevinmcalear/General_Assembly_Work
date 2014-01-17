# #Morning Exercise

# ###Array and Hash access

# **A. Given the following data structure:**

a = ["Peter", "PJ", "Jeff"]

puts a[0]
a.push("Cory")
a.delete("PJ")
puts a

# 1. How would you return the string "Peter"?
# 2. How would you add your name to the array?
# 3. How would you remove "PJ" from the array

# **B. Given the following data structure:**

 h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

 puts h[1]
 puts h[:two]
 puts h["two"]
 h[3] = "Three"
 h[:four] = 4
 h.delete(1)
 puts h

# 1. How would you return the string "One"?
# 2. How would you return the string "Two"?
# 3. How would you return the number 2?
# 4. How would you add {3 => "Three"} to the hash?
# 5. How would you add {:four => 4} to the hash?
# 6. How would you remove {1 => "One"} from the hash?

# **C. Given the following data structure:**

is = {true => "It's true!", false => "It's false"}

puts is["pj"]

# 1. What is the return value of is[2 + 2 == 4]? true
# 2. What is the return value of is["Peter" == "Jeff"]? false
# 3. What is the return value of is[9 > 10]? false
# 4. What is the return value of is[0]? false
# 5. What is the return value of is["PJ"]? false
# 6. What is the return value of is[false||true]? true
# 6. What is the return value of is[false||"Jeff"]? false

