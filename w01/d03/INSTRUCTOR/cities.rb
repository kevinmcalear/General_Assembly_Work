# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy: Rome, Pisa | pizza, pasta, more

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

puts countries[:italy]

puts countries[:france][:cities].sample

def discuss_trip(countries, country)
  # I was just in NYC, USA and I really enjoyed the hot dogs.
  if country == "france"
    return "You've never been!!!!!"
  else
    country_key = country.downcase.to_sym
    city = countries[country_key][:cities].sample
    food = countries[country_key][:food].sample

    return "I was just in #{city}, #{country} and I really enjoyed the #{food}."
  end
end

puts discuss_trip(countries, "usa")

# countries_two = {
#   :usa => {
#     :nyc => ["burgers", "hot dogs"],
#     :la => ["burgers", "hot dogs"]
#   }
# }