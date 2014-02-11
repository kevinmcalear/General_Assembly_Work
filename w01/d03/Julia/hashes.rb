
#USA: NYC, LA | burgers, hot dogs
#France: Paris, Nice | baguettes, croissants
#Italy: Rome, Pisa | pizza, pasta, more


#countries = {:USA => {:city_1 => "NYC", :city_2 => "LA", :food_1 => "burger", :food_2 => "hot dogs"}, :France => {:city_1 => "Paris", :city_2 => "Nice", :food_1 => "baguettes", :food_2 => "croissants"}, :Italy => {:city_1 => "Rome", :city_2 => "Pisa", :food_1 => "pizza", :food_2 => "pasta", :food_3 => "and more"}}

countries = {
	:USA => {
		:cities => ["NYC", "LA"], 
		:foods => ["burgers", "hot dogs"]
		}, 
	:France => {
		:cities => ["Paris", "Nice"], 
		:foods => ["baguettes", "croissants"]
		}, 
	:Italy => {
		:cities => ["Rome", "Pisa"], 
		:foods => ["pizza", "pasta"]
	}
}

def discuss_trip(countries, country)
	return "I was just in #{countries[country][:cities].sample}, #{country} and I really enjoyed the #{countries[country][:foods].sample}"
end

#puts discuss_trip(countries, :France)

#This person is trying to discuss their trip, but they've only been to two / three countries
#Use by human beings to discuss the trips that they've taken, the method knows which countries the user has been to

puts "What is the first of these countries you've been to?"
first_country = gets.chomp.to_sym
puts "What is the second country you've been to?"
second_country = gets.chomp.to_sym

if first_country == :USA && second_country == :France || first_country == :France && second_country == :USA
	puts discuss_trip(countries, first_country)
	puts "Your second trip was:"
	puts discuss_trip(countries, second_country)
elsif first_country == :USA && second_country == :Italy || first_country == :Italy && second_country == :USA
	puts discuss_trip(countries, first_country)
	puts "Your second trip was:"
	puts discuss_trip(countries, second_country)
elsif first_country == :France && second_country == :Italy || first_country == :Italy && second_country == :France
	puts discuss_trip(countries, first_country)
	puts "Your second trip was:"
	puts discuss_trip(countries, second_country)
else 
	puts "You haven't been there!"
end

