albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

# i = 0
# while i < albums.size
#   puts "I <3 #{albums[i]}"
#   i += 1
# end

# albums.each do |album|
#   puts "I <3 #{album} "
# end

#write a method called each that takes as its argument a collection

# def i_love_each_of( albums )

#   i = 0
#     while i < albums.size
#     puts "I <3 #{albums[i]}"
#     i += 1
#   end
# end

# puts i_love_each_of( albums )

new_array = albums.map { |album| album = "I <3 #{album}"}

# rray of album with the word who in it

who_array = albums.select { |album| album.include?("Who")}

countdown = (1..10). to_a

running_total = 0

countdown.each { |e| running_total += e}









