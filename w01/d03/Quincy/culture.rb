# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy : Rome, Pisa | pizza, pasta, more

# US_cities = ["NYC", "LA"]
# US_foods = ["Burgers", "Hot Dogs"]
# French_cities = ["Paris", "Nice"]
# French_foods = ["Baguettes", "Croissants"]
# Italian_cities = ["Rome", "Pisa"]
# Italian_foods = ["Pizza", "Pasta"]

# { :USC => "US_cities"} 
# { :USF => "US_foods"} 
# { :FC => "French_cities"} 
# { :FF => "French_foods"} 
# { :IC => "Italian_cities"} 
# { :IC => "Italian_foods"}

countries = {
  :usa => {
    :cities =>["NYC", "South Orange"], 
    :foods =>["Burgers", "Hot Dogs"]},
  :france => {
    :cities =>["Paris", "Nice"], 
    :foods =>["Baguettes", "Croissants"]},
  :italy => {
    :cities =>["Rome", "Pisa"], 
    :foods =>["Pizza", "Pasta"]}
}

# puts countries[:france][:cities].sample

def discuss_trip(countries, country)
city = countries[country][:cities].sample
food = countries[country][:foods].sample

# If they say Italy or the US, OK
# If they say France, no no no

if country == :usa
  return "I was just in #{city}, #{country} and I really liked the #{food}"
elsif country == :italy
  return "I was just in #{city}, #{country} and I really liked the #{food}"
elsif country == :france
  return "I've never been to #{city}, #{country} and I wanna try #{food}"
end
end

puts discuss_trip(countries, :france)