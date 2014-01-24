a = ["Peter", "PJ", "Jeff"]

# 1. How would you return the string "Peter"?
puts a[0]
# 2. How would you add your name to the array?
a.push("Sandy")
a<<"Sandy"
# 3. How would you remove "PJ" from the array
a.delete("PJ")

h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}
# 1. How would you return the string "One"?
h[1]
# 2. How would you return the string "Two"?
h[:two]
# 3. How would you return the number 2?
h["two"]
# 4. How would you add {3 => "Three"} to the hash?
h[3]= "three"
# 5. How would you add {:four => 4} to the hash?
h[:four] = 4
# 6. How would you remove {1 => "One"} from the hash?
h.delete(1)

s = {true => "It's true!", false => "It's false"}

# 1. What is the return value of is[2 + 2 == 4]?
its true
# 2. What is the return value of is["Peter" == "Jeff"]?
its false
# 3. What is the return value of is[9 > 10]?
false
# 4. What is the return value of is[0]?
nil
# 5. What is the return value of is["PJ"]?
nil
# 6. What is the return value of is[false||true]?
its true
# 6. What is the return value of is[false||"Jeff"]? 
#because there's no key Jeff in the array, Ruby returns the first "true" like term it sees
nil


albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

albums.each{ |x| puts "I <3 #{x}" }

i == 0
while i < 6
  puts "I <3 #{albums}"

i = 0
until i ==albums.count 
  puts "I <3 #{albums[i]}!"
  i += 1
end

write a method such that i_love_each_of(albums)

def i_love_each_of (album)
  i = 0
  until i ==albums.count 
    puts "I <3 #{albums[i]}!"
    i += 1
 end
end













