albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

def each(collection)
    i = collection.length - 1
    while i >= 0
    yield collection[i]
    i -= 1
    end  
end   

each(albums) do |x|
  puts "I <3 #{x}!"
end
