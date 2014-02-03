a = ["Peter", "PJ", "Jeff"]

# 1. How would you return the string "Peter"?
# 2. How would you add your name to the array?
# 3. How would you remove "PJ" from the array

a[0]
a.push("Steven")
a.delete("PJ")


h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1. How would you return the string "One"?
# 2. How would you return the string "Two"?
# 3. How would you return the number 2?
# 4. How would you add {3 => "Three"} to the hash?
# 5. How would you add {:four => 4} to the hash?
# 6. How would you remove {1 => "One"} from the hash?

h[1]
h[:two]
h["two"]
h[3] = "three"
h[:four] = 4
h.delete(1)

`is = {true => "It's true!", false => "It's false"}`

# 1. What is the return value of is[2 + 2 == 4]?
"it's true!"
# 2. What is the return value of is["Peter" == "Jeff"]?
"It's false"
# 3. What is the return value of is[9 > 10]?
"It's false"
# 4. What is the return value of is[0]?
nil
# 5. What is the return value of is["PJ"]?
nil
# 6. What is the return value of is[false||true]?
"it's true" (because if either is true, it returns true)
# 6. What is the return value of is[false||"Jeff"]?
nil  


albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# while albums.index < 6
#    puts "I <3" + albums[0]
#    album.index = 0 + 1
#  end

albums.each do |album name|
  puts "I <3 #{album_name}"
end

i = 0
until i == albums.length
  puts "I <3 #{albums[i]}"
  i += 1
end

write a method called each that takes as its argument a collection
loops through printing "i heard #{collection item}" then ends

album_names = ["Yankee Hotel Foxtrot", "Back In Black", "Highway To Hell"]

def i_love_each_of(albums)
  i =0
  until i == albums.length1
    puts "I <3 #{albums[i]}"
    i += 1
  end

  i_love_each_of(album_names)

  # Write a method that takes a block as an argument
  # and takes a collection as an argument
  # will loop over the collection in reverse order
  # and apply whatever behavior you give it, to each element

def reverse_count(collection)
  i = collection.length - 1
  while i >= 0 
    yield collection[i]
    i -= 1
  end
end

reverse_count (album_names){|name| puts "woo #{name}"}


=> ["Yankee Hotel Foxtrot", "Back In Black", "Highway To Hell"]
album_names.map {|new_names| puts "I heart #{new_names}"} 
I heart Yankee Hotel Foxtrot
I heart Back In Black
I heart Highway To Hell
=> [nil, nil, nil]


love_these_albums = album_names.map {|album| "I heart #{album}"}
puts love_these_albums


albums.select { |album| album }





