


def rando

	country_foods = { 
	:USA => {
		:cities => ["NYC", "LA"],
		:food => ["Burgers", "Hot Dogs"]
	},
	:France => {
		:cities => ["Paris", "Nice"],
		:food => ["Baguettes", "Croissants"]
	},
	:Italy => {
		:cities => ["Rome", "Pisa"],
		:food => ["Pizza", "Pasta", "More"]
	}
}

	puts "What country's randomness do you want? Your choices: USA or France or Italy."
	country = gets.chomp.to_sym

	if country == :France
		puts "You're full of shit! You've never been there."
	else

		print "Welcome to the city of #{country_foods[country][:cities].sample} in #{country} with our famous food of #{country_foods[country][:food].sample}."
	end
end


rando

