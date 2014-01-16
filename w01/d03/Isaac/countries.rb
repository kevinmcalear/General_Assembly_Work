countries = {}
countries[:usa] = {cities: ["nyc", "la"], foods: ["burgers", "hot dogs"]}
countries[:france] = {cities: ["Paris", "Niece"], foods: ["baguettes", "croissants"]}
countries[:italy] = {cities: ["Rome", "Pisa"], foods: ["pizza", "pasta", "more"]}

# I was just in NYC  Usa and I really enjoyed the hot dogs

def discuss_trip(countries, country)
  answer = "I was just in #{ countries[country][:cities].sample.upcase }, #{country.upcase} and I really enjoyed the #{  countries[country][:foods].sample }. "
  return answer
end

puts "What countries have you been to?"
been_to = gets.chomp

been_array = []

been_array = been_to.split(" ")

puts "country to talk about"
current_country = gets.chomp.downcase

if been_array.include?(current_country) && countries.include?(current_country.to_sym)
    puts discuss_trip(countries, current_country.to_sym)
else
    puts "Shut up you've never been there"
end


candies = [ "snickers", "mars bar", "100 grand"]
idx = 0

while idx < candies.size
  puts candies[idx]
  idx += 1
end











