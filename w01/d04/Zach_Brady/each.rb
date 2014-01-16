# WRITE A METHOD THAT CYCLES THROUGH AN ARRAY OF ALBUM NAMES PRINTING THE MESSAGE: "I <3 ALBUM_NAME! BUT WITHOUT USING .EACH, INSTEAD USING A LOOP"

albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

def I_love_each_of(albums)
    i = 0
    while i < albums.count
        puts "I <3 #{albums[i]}!"
        i += 1
    end
end

I_love_each_of(albums)