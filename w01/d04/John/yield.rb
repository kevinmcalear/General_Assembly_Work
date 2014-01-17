albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

def each(collection)
  i = 0
  while i < collection.length
    yield collection[i]
    i += 1
  end
end

# each(albums) { |album| puts "I <3 #{album}" }


def method_ex(thingy)
  i = thingy.length - 1
  while i >= 0
    # print "#{i}) "
    yield thingy[i]
    i -= 1
  end
end

# method_ex(albums) { |album| puts "This album is #{album}" }

a = albums.map {|album| "I <3 #{album}"}
# puts a


who = albums.select {|album| album =~ /Who/}
puts who