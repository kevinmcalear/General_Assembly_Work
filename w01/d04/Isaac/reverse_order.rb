#write a method that takes a block as an argument and takes a collection as an argument , will loop over that collection ni reverse order and apply whatever behavior you give it to each element of that collection in reverse order

albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]


def reverse_order( collection )
  index = collection.size

  until index == 0
    index -= 1
    yield collection[i]
  end

end

def each(collection)
i = collection.length - 1
while i >= 0
  yield collection[i]    
  i -= 1
  end  
end

puts each( albums ) { |album| puts album }


