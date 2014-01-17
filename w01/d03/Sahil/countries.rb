countries = 
{
	:USA=>
		{
		 :City=> ["NYC", "LA"],
		 :Food=> ["burgers", "hot dogs"]
		},
	
	:France=>
		{
		 :City=> ["Paris", "Nice"],
		 :Food=> ["baguettes", "croissants"]
		},
	
	:Italy=>
		{
		 :City=> ["Rome", "Pisa"],
		 :Food=> ["pizza", "pasta","more"]
		}
}
#puts countries[:France][:City].sample

def discuss_trip(countries, country)
	random_city = countries[country][:City].sample
	random_food = countries[country][:Food].sample
	puts "I was just in #{random_city}, #{countries.key(countries[country])} and I really enjoyed the #{random_food}"

	if country == :France
		puts "LIAR"
	end
end

puts discuss_trip(countries, :France)

candies.each do |candy|
	puts candy
end

candies = ["a","b","c"]
index = 0
while index < candies.length
	puts candies[index]
	index += 1
end
