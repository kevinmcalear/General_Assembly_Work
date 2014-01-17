clothes = ["shirts", "pants", "shoes", "socks", "ties"]

def reverse_method(collection)
  last_item = collection.last
  i = collection.index(last_item)
  while i >= 0 
    yield collection[i]
    i -= 1
  end
end

reverse_method(clothes) {|items| puts items}