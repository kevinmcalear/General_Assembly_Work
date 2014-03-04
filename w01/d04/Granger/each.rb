 albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# def i_love_each_of(collection)
#   i = 0

#   until i == collection.size
#     puts "I <3 #{collection[i]}"
#     i += 1
#   end
# end

# i_love_each_of(albums)

#method that takes a block as an argument and takes a collection as an argument and will loop over that collection in reverse order and apply whatever behavior you give it to each element in reverse order

# def reverse_order(collection)
#   i = collection.size

# until i == 0
#     i -= 1
#     yield collection[i]
#   end
# end

# reverse_order(albums) {|al| puts al}

p new_arr = albums.map {|e| "I <3 #{e}"}
