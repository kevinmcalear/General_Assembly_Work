albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# albums.each do |album|
# puts "I <3 #{album}!"
# end

# #or

# i = 0
# until i == albums.count
#   puts "I <3 #{albums[i]}!"
#   i += 1
# end

# def i_love_each_of(collection)
#   collection.each do |album|
#     puts "I <3 #{album}!"
#   end
# end

# def i_love_each_of(collection)
#   i = 0 
#   until i == collection.count
#     puts "I <3 #{collection[i]}!"
#     i += 1
#   end
# end

# i_love_each_of(albums)

def method(collection)
  i = collection.count - 1
  until i < 0
    yield collection[i]
    i -= 1
  end
end

method(albums) {|name| puts "I <3 #{name}!"}


albums.map {|name| "I <3 #{name}!"}

albums.select { |name| name.include?"Who" }
