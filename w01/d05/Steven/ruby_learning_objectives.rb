
# response = nil
# while response != 5
# puts "Choose from the following Menu"
# puts " 1 2 3 4 5"
# response = gets.chomp.to_i



# case response
# when 1
#   puts "Well, whatchu wanna do? This or That?"
#   response = gets.chomp
#   if response =="This"
#     puts "Oh Yeah!"
#   else 
#     puts "You sure?"
#   end

# when 2
#   puts "BBBBBB"
# when 3
#   puts "CCCCC"
# when 4
#   puts "DDDDD"
# when 5 
#   puts "EEEEEE"
# end

# end



# prng = rand(1..10)

# puts "Guess a number between one and 10!"
# guess = gets.chomp.to_i

# while guess != prng
#   puts "Guess Again!"
#   guess = gets.chomp.to_i
# if guess == prng
#   puts "Woooo!"

# end

# end

# def drinking_age?(age)
#   if age < 21
#     puts "Naaaaaah"
#     return false
#   else
#     puts "Wooo!"
#     return true 
#   end
# end

 # puts "What is the current temp?"
 #  current_temp = gets.chomp.to_i
 #  puts "Is the ac working?"
 #  ac_working = gets.chomp.downcase
 #  puts "What is your desired temperature?"
 #  desired_temp = gets.chomp.to_i 

# def ac_action(current_temp, ac_working, desired_temp)
#   if ac_working == "yes" && current_temp > desired_temp
#     return "Turn on the AC Please!"
#   elsif ac_working != "yes" && current_temp > desired_temp
#     return "Fix the AC Now! It's Hot!"
#   elsif ac_working != "yes" && current_temp < desired_temp
#     return "Fix this AC whenevs, it's cool"
#   end
# end

#   puts ac_action(current_temp, ac_working, desired_temp)

# def is_prime?(num)
#   x = 2
#   while x < num
#     if num % x == 0
#       return false
#     end
#     x = x + 1
#     return true
  
# end

# puts "What day of the week is it?"
# day = gets.chomp

# case day
# when "Monday"
#   puts "wooooo Monday"
# when "Tuesday"
#   put "Woooo Tuesday"
# when "Wednesday"
#   puts "Really? Wednesday?"
# when "Thursday"
#   puts "Thurrrrrrsday"
# when "Friday"
#   puts "fridaaaaay"
# end

# puts "What was the price of your meal?"
# price = gets.chomp.to_f
# puts "what is the tax percent (in decimal)"
# tax = gets.chomp.to_f
# puts "How much do you want to tip(in decimal)?"
# tip = gets.chomp.to_f
# puts "Your total is #{price + (price * tax) + (price * tip)}"

# def convert_to_farrenheight(temp)
#   return ((temp * 9) / 5) + 32
# end

# puts "enter a temp in celcius"
# cel_temp = gets.chomp.to_f
# puts convert_to_farrenheight(cel_temp)


# firstnamelist = ["Bumblebee", "Bandersnatch", "Broccoli", "Rinkydink", "Bombadil", "Boilerdang", "Bandicoot", "Fragglerock", "Muffintop", "Crumplesack", "Congleton", "Blubberdick", "Buffalo", "Benadryl", "Butterfree", "Burberry", "Whippersnatch", "Buttermilk", "Beezlebub", "Budapest", "Boilerdang", "Blubberwhale", "Bumberstump", "Bulbasaur", "Cogglesnatch", "Liverswort", "Bodybuild", "Johnnycash", "Bendydick", "Burgerking", "Bonaparte", "Hairycooch", "Bunsenburner", "Billiardball", "Bukkake", "Baseballmitt", "Blubberbutt", "Baseballbat", "Rumblesack", "Barister", "Danglerack", "Rinkydink", "Bombadil", "Honkytonk", "Billyray", "Bumbleshack", "Snorkeldink", "Anglerfish", "Beetlejuice", "Bedlington", "Bandicoot", "Boobytrap", "Blenderdick", "Bentobox", "Anallube", "Pallettown", "Wimbledon", "Hairyballs", "Buttercup", "Blasphemy", "Syphilis", "Snorkeldink", "Brandenburg", "Barbituate", "Snozzlebert", "Tiddleywomp", "Bouillabaisse", "Wellington", "Benetton", "Bendandsnap", "Timothy", "Brewery", "Bentobox", "Brandybuck"];

# lastnamelist = ["Coddleswort", "Curdlesnoot", "Calldispatch", "Humperdinck", "Rivendell", "Cuttlefish", "Lingerie", "Vegemite", "Ampersand", "Cumberbund", "Candycrush", "Clombyclomp", "Cragglethatch", "Nottinghill", "Cabbagepatch", "Camouflage","Creamsicle", "Curdlemilk", "Upperclass", "Frumblesnatch", "Crumplehorn", "Talisman", "Candlestick", "Chesterfield", "Bumbersplat", "Scratchnsniff", "Snugglesnatch", "Charizard", "Ballsacksnip", "Carrotstick", "Cumbercooch", "Crackerjack", "Crucifix", "Cuckatoo", "Cockletit", "Collywog", "Gigglesnort", "Capncrunch", "Covergirl", "Cumbersnatch", "Countryside","Coggleswort", "Splishnsplash", "Copperwire", "Animorph", "Curdledmilk", "Cheddarcheese", "Cottagecheese", "Crumplehorn", "Snickersbar", "Banglesnatch", "Stinkyrash", "Cameltoe", "Chickenbroth", "Concubine", "Candygram", "Moldyspore", "Chuckecheese", "Cankersore", "Crimpysnitch", "Wafflesmack", "Chowderpants", "Toodlesnoot", "Clavichord", "Cuckooclock", "Oxfordshire", "Cumbersome", "Chickenstrips", "Battleship", "Commonwealth", "Cunningsnatch", "Custardbath", "Kryptonite"]

# # puts firstnamelist[0]
# # firstnamelist.push("Jeff")
# # firstnamelist.delete("Muffintop")
# # firstnamelist.index("Gigglesnort")

# puts "Would you like to select a random name? (Yes or No)"
# answer = gets.chomp
# while answer == "Yes"
#   puts firstnamelist.sample + " " + lastnamelist.sample
#   puts "Would you like to select a random name? (Yes or No)"
#   answer = gets.chomp
# end

# a = ["Peter", "PJ", "Jeff"]

# a[0]
# a.push("Steve")
# a.delete("PJ")

# h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# h[1]
# h[:two]
# h["two"]
# h[3] = ("Three")
# h[:four] = (4)
# h.delete(1)

# is = {true => "It's true!", false => "It's false"}

# #is[2 + 2 == 4]
# "its true!"

# #is["Peter" == "Jeff"]
# "its false"
# #is[9 > 10]
# "its false"
# #is[0]
# nil
# #is["PJ"]
# nil
# #is[false||true]
# "its true"
# #is[false||"Jeff"]
# nil

#usa NYC LA | burgers, hot dogs
#france Paris Nice | Baguettes, croissants
#italy Rome Pisa | Pizza, Pasta, More

# countries = {
#   :usa => {
#     :cities=> ["NYC", "LA"],
#     :food=> ["Burgers", "Hot Dogs"]

#     },
#   :france => {
#     :cities => ["Nice", "Paris"],
#     :food => ["Baguettes", "Croissants"]

#     },
#   :italy => {
#     :cities=> ["Rome", "Pizza"],
#     :food=> ["Pizza", "Pasta", "More"]
#   }
# }

#I went to (city) and really enjoyed the (food)

#def travel(city, food)


# student names

# names.sample
# names.length
# names.index("Sandy Yu")
# names[4]
# names.join("|")
# names.select{|name| name[0].include?("J")}

# users = {
#   "Peter" => {
#     :github => "peterylai",
#     :favorite_numbers => [12, 42, 75],
#   },
#   "PJ" => {
#     :github => "h4w5",
#     :favorite_numbers => [8, 12, 24],
#   },
#   "Jeff" => {
#     :github => "jkonowitch",
#     :favorite_numbers => [12, 14, 85],
#   },
# }


# users["Jeff"][:github]
# users["PJ"][:favorite_numbers].push(7)
# users["Steve"] = {:github =>"stevenaweiss", :favorite_numbers=>[3,4,7]}
# users["Peter"][:favorite_numbers]

# users["Jeff"][:favorite_numbers].sort[0]
# users["PJ"][:favorite_numbers].select {|number| number.even?}

# users["Peter"][:favorite_numbers] & users["Jeff"][:favorite_numbers] & users["PJ"][:favorite_numbers]

# [ "a", "b", "c" ] | [ "c", "d", "a" ]    #=> [ "a", "b", "c", "d" ]


getter vs setter



the setter method sets the state of an object. In a class, call it on an argument as an instance of a class, 
apt_1.sqft = 300 is the setter method 

the getter method returns the state of the instance variable.














