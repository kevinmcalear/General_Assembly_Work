
albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# albums.each do |album|
#   puts "I <3 #{album}."
# end
  

# i = 0
 
# while(i < albums.count)
#   puts "I <3 #{album}"
#   i += 1
# end


# def i_love_each_of(albums)
#   i = 0
#   while(i < albums.count)
#     puts "I <3 #{album}."
#     i += 1
#   end
# end

# def method(array) 
#   i = array.count - 1
#   while(i >= 0)
#     yield array[i]
#     i -= 1
#   end
# end  

albums.map { |album| "I <3 #{album}!"}