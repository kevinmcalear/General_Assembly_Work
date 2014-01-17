albums= ["Who's Next",
 "Tommy",
 "Quadrophenia",
 "The Who Sell Out",
 "My Generation",
 "A Quick One"]

def i_love_each_of(albums)
i = 0 
  until i == albums.length
  puts "I <3 #{albums[i]}!"
  i += 1
  end
end

i_love_each_of(albums)


def each_reverse(albums)
  i = albums.length
  until i == 0 
    puts  "I <3 #{albums[i]}!"
    i -= 1 
  end
end

each_reverse(albums)


new_array = albums.map {|album| "I <3 #{album}!"}


albums.select{ |album| album.include?("Who") } 