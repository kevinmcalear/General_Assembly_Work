##write a loop that says "I <3 #{album_name}"

albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

years =

members = 

# #Enumerator and block
# albums.each do |album_name|
# 	puts "I <3 #{album_name}"
# end

# #loop
# i = 0
# unti i == albums.count
# puts "I <3 #{albums[i]}"
# i+=1
# end


# ##write a method called "EACH" that takes a collection as its arg, printing out "I <3"

# def i_love_each_of(albums)
# 	i = 0
# 	until i == albums.count
# 	puts "I <3 #{albums[i]}"
# 	i+=1
# 	end
# end

# i_love_each_of(albums)

# ##Ranges
# (1..10).class

# #turn a range to an array
# (1..10).to_a

# #write your own enummerator method
# def each(collection)
# 	i = 0
# 	while i < collection.length
# 	yield collection[i]
# 	i += 1
# 	end
# end

# each(albums) {|album_name| puts "I <3 #{album_name}"}

##Write a Method that takes a block as an arguement and takes a collection as an arguement and loops over the collection in reverse order and apply to each element
##Need to rewrite

# def each_reverse(collection)
# 	i = collection.length - 1
# 	while i > 0
# 	yield collection[i]
# 	i -= 1
# 	end
# end

# each_reverse(albums) {|album_name| puts "I <3 #{album_name} in reverse"}

# #Review of ".each" Method
# albums.each {|e| puts e}

# #Add the values into a new array
# new_album_list = [] #create an empty array
# albums.each {|e| new_album_list.push(e.upcase)} #push value to new array

# puts new_album_list

##Create a new array using .map.  Each string should be "I <3 #{album_name}"
# heart_array = albums.map{|album_name| "I <3 #{album_name}"}

# puts heart_array

##Use the Join method to create a single string out of Array values. 

##how to join using block
# new_string = " "
# albums.each {|e| new_string = new_string += e +"! ,"}

# puts new_string

##how to join using method
# new_string = albums.join "! , "
# puts new_string

# #Using the Select Method with any album with "Who" is in the title

# who_array = albums.select {|album_name| album_name.downcase.include? "who"}
# puts who_array

#Understanding .reduce
##Adding Values using a Block
# countdown = (1..10).to_a

# running_total = 0
# countdown.each {|e| running_total += e}

# puts running_total

#using reduce											

# x = countdown.reduce {|running_total, e| running_total + e}
# puts x

##Using .split to maninipuate data
text  = "hello this is a group of words"
text.split

text2 = "Hello \n hello you"
text2.split("\n")















