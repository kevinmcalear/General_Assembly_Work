albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

def i_love_each_of( albums )

  i = 0
  until i == albums.count
    
    puts "I <3 #{albums[ i ]}!"
   
    i += 1

  end

end

i_love_each_of( albums )