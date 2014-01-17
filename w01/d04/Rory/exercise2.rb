#exercise2.rb
#"I <3 #{albumname}"
albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]
albums.each do |album_name|
	puts "I <3 #{album_name}"
end

def i_love_each_of (albums)
	i = 0
	until i == albums.count
		puts "I <3 #{albums[i]}"
		i += 1
	end
end

#write a method that takes a block as an argument and takes a collection as an argument.  will loop over that collection in reverse order & apply
#whatever behavior you give it to each element of that collection in reverse order.

def each(collection)
	i = collection.count
	while i > 0
		yield collection
		i -= 1
	end
end

{|album_name| puts "I <3 #{album_name}."}



albums.map!{|album_name|"I <3 #{album_name}"}

albums.select{|album_name|album_name.include?("Who")}
