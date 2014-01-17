albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

def i_love_each_of(x)
  i = 0
  until i == x.length
    puts "I <3 #{x[i]}!"
    i+=1
  end
end

i_love_each_of(albums)
