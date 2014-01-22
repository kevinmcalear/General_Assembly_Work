albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]
loved_albums = []

def I_love_each_of(albums)
    i = 0
    while i < albums.count
        loved_albums.push("I <3 #{albums[i]}!")
        i += 1
    end
    puts loved_albums
end


albums.map { |albums| loved_albums.push("I <3 #{albums}!") }

puts albums.select { |album | album.include?("Who")}

