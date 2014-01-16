
#USA : NYC, LA | burgers, hot dogs
#France : Paris, Nice | baguettes, croissants
#Italy : Rome, Pisa | pizza, pasta, more

#use data structue to encode this info


countries = {
	:usa => {
		:cities => ["NYC", "LA"], 
		:food => ["burgers", "hot dogs"]
	},

	:france => {
		:cities => ["Paris", "Nice"], 
		:food => ["baguettes", "croissants"]
	}, 

	:italy => {
		:cities => ["Rome", "Pisa"], 
		:food => ["pizza", "pasta", "more"]
		}
}

#print countries[:France][:cities].sample

def discuss_trip(countries, country)
	# I was just in NYC, USA and I really enjoyed the hot dogs.
end

def discuss_trip(countries, country)
	#passing the countries hash in because with scope it wouldn't be avail otherwise
	place = countries[country][:cities].sample
	meal = countries[country][:food].sample
	puts "I was just in #{place}, #{country.capitalize} and I really enjoyed the #{meal}."
end

discuss_trip(countries, :france)

#method knows they've only been to 

def haveyoubeen (countries)
	puts "Have you been to #{countries.keys.sample}?"
	answer = gets.chomp.downcase
	if answer == "yes"
		discuss_trip(countries, answer)
	else
		puts "Oh, ok."
	end
end

haveyoubeen