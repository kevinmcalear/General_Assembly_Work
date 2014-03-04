# USA : NYC, LA
# France : Paris, Nice
# Italy: Rome, Pisa


countries = {
  :usa => {
    :cities => ["nyc", "la"], 
    :foods => ["burgers", "hotdogs"]}, 
  :france=> {
    :cities=> ["paris", "nice"], 
    :foods => ["baguettes", "croissants"]}, 
  :italy=> {
    :cities=> ["Rome", "Pisa"], 
    :foods => ["pizza", "pasta", "more"]
  }
}


def discuss_trip(countries, country)
  if country == "France"
    return "You've never been to France."
  else
    city = countries[country.downcase.to_sym][:cities].sample
    food = countries[country.downcase.to_sym][:foods].sample
   return"I was just in #{city.capitalize}, #{country.capitalize}, and I really enjoyed the #{food}."
    #i was just in NYC, USA, and I really enjoyed the hot dogs
  end
end

def aint_been(countries, been_to)
  all_countries = countries.keys.map {|el| el.to_s}
  not_been_to = all_countries - been_to
  not_been_to.map! {|el| el.capitalize}
  "You have not been to: #{not_been_to.join(", ")}"
end

# puts discuss_trip(countries, ["France", "USA", "Italy"].sample)

puts "What countries have you been to?"
arr = gets.chomp.split
arr.map! {|el| el.downcase}
puts aint_been(countries, arr)






