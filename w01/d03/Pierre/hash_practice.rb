# cities = {:usa => ["nyc", "la"], :france => ["paris", "nice"], :italy => ["rome", "pisa"]}
# foods = {:usa => ["burgers", "hot dogs"], :france => ["baguettes", "croissants"], :italy => ["pizza", "pasta", "more"]}

# #countries = {:usa => [cities, foods], :france => [cities, foods], :italy => [cities, foods]}
# countries = [:usa, :france, :italy]

countries = {
  :usa => {

    :foods => ["burgers", "hot dogs"],
    :cities => ["NYC", "LA"]

  },

  :france => {

    :foods => ["baguettes", "croissants"],
    :cities => ["Paris", "Nice"]

  },

  :italy => {

    :foods => ["pizza", "pasta", "more"],
    :cities => ["Rome", "Pisa"]

  }

}

#print italy foods:
puts countries[:italy][:foods]

#random city from france
puts countries[:france][:cities].sample

puts "\n\n"

#method with countries and a country as argument
#print to console, "I was just in NYC, USA and I really enjoyed the hot dogs"
#(City and Food should be randomized)
def discuss_trip(countries, country)
  country_key = country.downcase.to_sym
  return "I was just in #{countries[country_key][:cities].sample}, #{country} and I really enjoyed the #{countries[country_key][:foods].sample}!"
end

countries_visited = ["usa", "italy"]
puts "What trip do you want to discuss (enter a country)"
trip = gets.chomp
if !countries_visited.include?(trip.downcase)
  puts "You haven't been there!"
else
  puts discuss_trip(countries, trip)
end