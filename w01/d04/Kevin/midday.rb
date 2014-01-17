# THIS IS MY DATA
albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]


# THIS IS A METHOD THAT PUTS AN ARRAY I PASS IT
def i_love_each_of( albums )
  i = 0
  until i == albums.count    
    puts "I <3 #{albums[ i ]}!"   
    i += 1
  end
end


# THIS IS A METHOD THAT REVERSES  THE ORDER OF AN ARRAY VIA PUTS
def reverse( albums )
  i = albums.count - 1
  while i >= 0
    yield albums[i]
    i -= 1
  end
end


# THIS MAKES A NEW ARRAY FROM ALBUMS ARRAY
new_array = albums.map { |album| "I <3 #{album}!"}

# THIS MAKES A NEW ARRAY FROM ALBUMS ARRAY
who_array = albums.select { |album| album.include? "Who"}

# THIS IS MY TEXT
puts `clear`

puts "STARTING NORMAL"
puts "********************************************"
i_love_each_of( albums )
puts ""

puts "NOW FLIP IT AND REVERSE IT"
puts "********************************************"
reverse( albums ) { | x | puts "I Reverse Love #{x}!"}
puts ""

puts "NOW FOR MY BRAND NEW ARRAY"
puts "********************************************"
puts new_array
puts ""

puts "NOW FOR MY BRAND NEW ARRAY"
puts "********************************************"
puts who_array