albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

new_array = albums.map do |x|
   "I <3 #{x}"
end

puts new_array

albums.select {|x| x.include? ("Who")}