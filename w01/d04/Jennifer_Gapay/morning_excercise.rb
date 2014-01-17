
#Morning Exercise
a = ["Peter", "PJ", "Jeff"]

# 1. How would you return the string "Peter"?
a[0]

# 2. How would you add your name to the array?
a.push("Jennifer")

# 3. How would you remove "PJ" from the array
a.delete("Peter")

-----------

# **B. Given the following data structure:**
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string "One"?
h[1]

# 2. How would you return the string "Two"?
h[:two]

# 3. How would you return the number 2?
h["two"]

# 4. How would you add {3 => "Three"} to the hash?
h[3] = "three"

# 5. How would you add {:four => 4} to the hash?
h[:four] = 4

# 6. How would you remove {1 => "One"} from the hash?
h.delete(1)

-----------
is = {true => "It's true!", false => "It's false"}

# 1. What is the return value of is[2 + 2 == 4]?
is[2+2 == 4] #(true)

# 2. What is the return value of is["Peter" == "Jeff"]?
is["Peter" == "Jeff"] #(false)

# 3. What is the return value of is[9 > 10]?
is[9 > 10] #(false)

# 4. What is the return value of is[0]?
nil because 0 is not a key in hash

# 5. What is the return value of is["PJ"]?
nil because PJ is not in the hash

# 6. What is the return value of is[false||true]?
is true #because false or true is true


# 6. What is the return value of is[false||"Jeff"]?
nil #because Jeff is not a key in the hash






# NOTES:
# true about arrays and not hashes.  array is a list, hashes has key and value.  array = orders.  hash, there is no order.  things are defined by keys
