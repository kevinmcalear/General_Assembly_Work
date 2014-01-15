# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy : Rome, Pisa | pizza, pasta, wine

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
    :food => ["pizza", "pasta", "wine"]
    }

}

#puts countries

# to call a particular country, type:
# puts countries[:italy][:cities] 

# to print a random city from France, type:
#puts countries[:france][:cities].sample

puts "What countries have you been to?"
country = gets.chomp.downcase.to_sym

def discuss_trip(countries, country)

city = countries[country][:cities].sample
food = countries[country][:food].sample

if country == :france
  puts "What are you talking about?! You've never been to #{country.capitalize}!"
else  
puts "I just went on holiday to #{city}, #{country.capitalize}, and I really enjoyed the #{food}."
  end

end

puts discuss_trip(countries, country)












