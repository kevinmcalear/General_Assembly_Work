albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

#LOOP

# until i == albums.count
# 	puts "I <3 #{album_name[i]}"
# 	i += 1
# end

#METHOD WITH LOOP

# def i_love_each_of( albums )
# 	i = 0
# 	while i < albums.count
# 		puts "I <3 #{albums[i]}!"
# 		i += 1
# 	end
# end

# puts i_love_each_of(albums)

#YIELD TO THE BLOCK

# def each(collection)
#      i = 0
#      while i < collection.length
#           yield collection[i]
#           i += 1
#      end
# end

# each(albums) {|album_name| puts "I <3 #{album_name}!"}

#YIELD TO THE BLOCK REVERSED 

# def eachrev(collection)
# 	i = collection.length - 1
# 	while i >= 0
# 		yield collection[i]
# 		i -= 1
# 	end
# end

# eachrev(albums) {|album_name| puts "I <3 #{album_name}"}

#EACH

# albums.each { |e| puts e.upcase}

# new_album_list = []

# albums.each { |e| new_album_list.push(e.upcase)}

# albums.each do |album_name|
# 	puts "I <3 #{album_name}"
# end

#MAP
#i <3 album name in an array

# love_albums = (albums).map { |e| "I <3 #{e}!"}
#puts love_albums


#JOIN

new_string = albums.join( "!, " )

puts new_string

#NEW STRING WITH . ON THE END

newer_string = albums.join("!, ") + "."
puts newer_string

#ARRAY WITH JUST WHO

who_array = albums.select { |e| e.downcase.include? "who" }
puts who_array


#REDUCE

 countdown = (1..10).to_a

# running_total = 0
# countdown.each { |e| running_total += e}

# OR

# countdown.reduce { |running_total, e| running_total + e }
# # add a number to give running_total a value. Otherwise it's nil
# countdown.reduce(1000) {|running_total, e| running_total + e}

#FACTORIAL

running_total = countdown.reduce {|running_total, e| running_total * e}

puts running_total





