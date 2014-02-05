# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baugettes, croissants
# Italy: Rome, Pisa | pizza, pasta, more
# been two countries, but not the other...return you never went to this place
countries = {
  :usa => {
    :cities => ["NYC", "LA"],
    :food => ["burgers", "hot dogs"]
  },

  :france => {
    :cities => ["Paris",  "Nice"],
    :food => ["baguettes", "croisants"]
  },

  :italy => {
    :cities => ["Rome",  "Pisa"],
    :food => ["pizza", "pasta", "more"]
  }
}

# puts countries[:italy][:food]
# puts countries[:france][:cities].sample

def discuss_trip(countries, country)
  if country == "france"
    return "You've never been!!!"
  else
  country_key = country.downcase.to_sym
  city = countries[country_key][:cities].sample
  food = countries[country_key][:food].sample
  
  return "I was just in #{city}, #{country} and I really enjoyed the #{food}"
end

puts discuss_trip(countries, :usa)
  
puts discuss_trip(countries, :france)



#the first part [:italy] returns two hashes from italy, cities and food

# food [:USA] = [burgers, hot dogs]
# food [:France] = [baugettes, croissants]
# food [:Italy] = [pizza, pasta, more]