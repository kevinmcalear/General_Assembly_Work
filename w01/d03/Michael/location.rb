clocation = {:usa =>
				{
				:cities =>  
					["NYC", "LA"],
				:food =>
					["burgers", "hot dogs"]
				},
			:france =>	
				{
				:cities =>
					["Paris", "Nice"],
				:food => 
					["baguettes", "croissants"]
				},
			:italy =>		
				{
				:cities => 
					["Rome", "Pisa"],
				:food => 
					["pizza", "pasta", "more"]
				}
			}

puts "#{location[:usa][:cities][1]}"


# puts location [:italy][:food]
#puts location [:france][:cities].sample

#I was just in NYC, USA, and I really enjoyed the hot dogs. 
#random city, random food

def discuss_trip(location,country)
	country_sym = country.downcase.to_sym
	city = location[country_sym][:cities].sample
	food = location[country_symcle][:food].sample

	puts "I was just in #{city}, #{country} and I really enjoyed the #{food}"
end

discuss_trip(location,"France")

##You never went to this place
##input, which countries you went to.  Return the countries that they did n't reutrn to. 

def countries_not_travelled(location,country)
	country_sym = country.downcase.to_sym
	rand(count location)
end












