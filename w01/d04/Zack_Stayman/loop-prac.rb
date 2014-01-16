albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# albums.each do |name|
#   puts "I <3 #{name}"
# end

# def i_love_each_of(albums)
#   i = 0
#   until i == albums.count
#     puts "I <3 #{albums[i]}"
#     i += 1
#   end
# end

# i_love_each_of(albums)

# def each(collection)
#   i = 0
#   while i < collection.length
#     yield collection[i]
#     i += 1
#   end
# end

# Write a method that takes a block as an argument and takes a collection as an argument loop over a collection in reverse order and apply the block

def reverse_loop(collection)
  i = (collection.count-1)
  while i >= 0
    yield collection[i]
    i -= 1
  end
end

# reverse_loop(albums) {|albums| puts "I <3 #{albums}"}

# albums.each {|e| new_album_list.push(e.upcase)}



new_array = albums.select {|a| a.include?("Who")}

puts new_array


