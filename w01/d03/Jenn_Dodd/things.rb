things = {
	:usa => {
		:cities =>["NYC", "LA"], 
		:foods => ["burgers", "hotdogs"]
	}, 

	:france => {
		:cities => ["Paris", "Nice"], 
		:foods => ["baguettes", "croissants"]
	},

	:italy => {
		:cities => ["Rome", "Pisa"], 
		:foods => ["pizza", "pasta", "more"]
	}
}

# puts things
# puts things[:usa][:cities][1]
# puts things[:italy][:cities][0]
# puts things[:france][:cities][1]
# puts things[:usa][:foods][1]
# puts things[:italy][:foods][2]
# puts things[:france][:foods][1]

puts things[:france][:cities].sample


def discuss_trip(things, country)
	if country == :usa
		country_picked = "USA"
	elsif country == :france
		country_picked = "France"
	else
		country_picked = "Italy"
	end  

	return "I was just in #{things[country][:cities].sample}, #{country_picked} and I really enjoyed the #{things[country][:foods].sample}!"
end

# puts discuss_trip(things, :usa)
# puts discuss_trip(things, :usa)
# puts discuss_trip(things, :france)
# puts discuss_trip(things, :france)
# puts discuss_trip(things, :italy)
# puts discuss_trip(things, :italy)

country = things.keys.sample
puts country

def travel(things, country)
	if country == :usa
		country_picked = "USA"
	elsif country == :france
		country_picked = "France"
	else
		country_picked = "Italy"
	end  
	puts "Have you been to #{country_picked}? (Y)es or (N)o"
	answer = gets.chomp.upcase
	if answer == "Y"
		return "I was just in #{things[country][:cities].sample}, #{country_picked} and I really enjoyed the #{things[country][:foods].sample}!"
	else
		puts "Oh, you should go sometime."
	end
end




