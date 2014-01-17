albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# i = 0
# until i == albums.count
# puts "I <3 #{albums[i]}" 
# i +=1
# end

# albums.each do |album_name|
#   puts "I <3 #{album_name}"
# end


# def i_love_each_of(albums)
#   i = 0
#   until i == albums.count
#   x = "I <3 #{albums[i]}" 
#   i +=1
#   return x
#   end
# end

# puts i_love_each_of albums

def reverse_loop(collection)
  i = collection.size - 1
  until i == 0
    yield collection[i]
    i -= 1
  end
end

reverse_loop(albums) { |item| puts "I <3 #{item}" }
