
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


puts countries[:france][:cities].sample

def discuss_trip(countries, country)
  country_sym = country.to_sym
  city = countries[country_sym][:cities].sample
  food = countries[country_sym][:food].sample
  return "I was just in #{city}, #{country.capitalize}, and I really enjoyed the #{food}."
end

puts discuss_trip(countries, "usa")
puts discuss_trip(countries, "france")
puts discuss_trip(countries, "italy")
puts


def discuss_trip(countries, country)
  city = countries[country][:cities].sample
  food = countries[country][:food].sample
  return "I was just in #{city}, #{country}, and I really enjoyed the #{food}."
end

puts discuss_trip(countries, :usa)
puts discuss_trip(countries, :france)
puts discuss_trip(countries, :italy)
puts

def discuss_trip(countries, country)
  city = countries[country][:cities].sample
  food = countries[country][:food].sample
  if country == :france
    return "You haven't been to #{country}."
  else
    return "You've been to #{city}, #{country} and enjoyed the #{food}."
  end
end

puts discuss_trip(countries, :usa)
puts discuss_trip(countries, :france)
puts discuss_trip(countries, :italy)
