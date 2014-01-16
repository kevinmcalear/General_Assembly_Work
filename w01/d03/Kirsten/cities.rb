# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy : Rome, Pisa | pizza, pasta, more


# places = {:usa => [["NYC", "LA"], ["burgers", "hot dogs"]], :france => [["Paris", "Nice"], ["baguettes, croissants"]], :italy => [["Rome", "Pisa"], ["pizza", "pasta", "more"]]}

# puts places[:usa][1][0]

# countries = {
#   :usa => {
#     :cities => ["NYC", "LA"], 
#     :foods => ["burgers", "hot dogs"]
#   }, 

#   :france => {
#     :cities => ["Paris", "Nice"], 
#     :foods => ["baguettes", "croissants"]
#   }, 

#   :italy => {
#     :cities => ["Rome", "Pisa"], 
#     :foods => ["pizza", "pasta"]
#   }
# }

# puts countries[:france][:cities].sample

countries = {
  :usa => {
    :cities => ["NYC", "LA"], 
    :foods => ["burgers", "hot dogs"]
  }, 

  :france => {
    :cities => ["Paris", "Nice"], 
    :foods => ["baguettes", "croissants"]
  }, 

  :italy => {
    :cities => ["Rome", "Pisa"], 
    :foods => ["pizza", "pasta"]
  }
}

def discuss_trip(countries, country)
  if country =="france"
    return "You've never been there."
  else
    country = country.to_sym
       return "I was just in #{countries[country][:cities].sample}, #{country} and I really enjoyed the #{countries[country][:foods].sample}."
  end
end

puts "What country do you want to talk about?"
country = gets.chomp.downcase
  puts discuss_trip(countries,country)


candies = ["mars bars", "twix", "100 Grand"]
counter = candies.count
while counter >= 0
  puts candies[counter]
  counter -= 1
end

candies.each do |candy|
  puts candy
end





