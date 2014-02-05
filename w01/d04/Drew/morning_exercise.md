#Morning Exercise

###Array and Hash access

**A. Given the following data structure:**

`a = ["Peter", "PJ", "Jeff"]`

1. How would you return the string "Peter"?
  a[0]
2. How would you add your name to the array?
  a.push("drew")
3. How would you remove "PJ" from the array
  a.delete()

**B. Given the following data structure:**

`h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}`

1. How would you return the string "One"?
h[1] - this takes square brackets to access the array in the hash
2. How would you return the string "Two"?
h[:two]
3. How would you return the number 2?
h["two"]
4. How would you add {3 => "Three"} to the hash?
h[3] = "three"
5. How would you add {:four => 4} to the hash?
h[:four] = 4
6. How would you remove {1 => "One"} from the hash?
h.delete(1)

**C. Given the following data structure:**

`is = {true => "It's true!", false => "It's false"}`

1. What is the return value of is[2 + 2 == 4]?
returns "it's true!"
2. What is the return value of is["Peter" == "Jeff"]?

3. What is the return value of is[9 > 10]?

4. What is the return value of is[0]?

5. What is the return value of is["PJ"]?

6. What is the return value of is[false||true]?

6. What is the return value of is[false||"Jeff"]?
