albums = ["Who's Next", "Tommy", "Quadrophenia", "The Who Sell Out", "My Generation", "A Quick One"]

i = 0
while i < albums.length
  puts 'I <3 "' + "#{albums[i]}" + '"'
  i += 1
end

puts
albums.each { |album| puts "I <3 #{album}" }



def i_love_each_of( albums )
  i = 0
  while i < albums.length
    puts "I <3 #{albums[i]}"
    i += 1
  end
end

puts
i_love_each_of ( albums )


