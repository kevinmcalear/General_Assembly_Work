

## Italy and US; if France, "you never went to this place"
def discuss_trip(world, country)
  country_proper = country.to_s.capitalize
  if country_proper == "Usa" then country_proper.upcase! end
  if(country == :france)
    return "You've never been to #{country_proper}."
  else
    return "I was just in #{world[country][:cities].sample}, #{country_proper} and I really enjoyed the #{world[country][:food].sample}."
  end
end 

#world hash
world = {
  :usa => {
    :cities => ["NYC", "LA"], 
    :food => ["burgers", "hotdogs"]
  },

  :france => {
    :cities => ["Paris", "Nice"],
    :food => ["baguettes", "croissants"]
  },

  :italy => {
    :cities => ["Rome", "Pisa"],
    :food => ["pizza", "pasta"]
  }
}

#Sample countries
country = world.keys.sample


puts discuss_trip(world, country)







