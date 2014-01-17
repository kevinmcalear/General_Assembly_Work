a = ["Peter", "PJ", "Jeff"]

1. How would you return the string "Peter"?
2. How would you add your name to the array?
3. How would you remove "PJ" from the array

1. a[0]
2. a.push("Kirsten")
3. a.delete("PJ")

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

1. How would you return the string "One"?
2. How would you return the string "Two"?
3. How would you return the number 2?
4. How would you add {3 => "Three"} to the hash?
5. How would you add {:four => 4} to the hash?
6. How would you remove {1 => "One"} from the hash?

1. h[1]
2. h[:two]
3. h["two"]
4. h[3] = "Three"
5. h[:four] = 4
6. h.delete(1)

`is = {true => "It's true!", false => "It's false"}`

1. What is the return value of is[2 + 2 == 4]?
2. What is the return value of is["Peter" == "Jeff"]?
3. What is the return value of is[9 > 10]?
4. What is the return value of is[0]?
5. What is the return value of is["PJ"]?
6. What is the return value of is[false||true]?
7. What is the return value of is[false||"Jeff"]?

1. "It's true!"
2. "It's false"
3. "It's false"
4. nil
5. nil
6. "It's true!"
7. nil  false||"Jeff" evaluates as "Jeff". "Jeff" is not a key. the || will return the first truthy value it sees. 
if you did true||"Jeff" it will return true. "PJ"||"Jeff" will return "PJ". Strings are truth-like. "pj"||true will return "pj"
true && "No" will return "No"
"no" && true will return true
