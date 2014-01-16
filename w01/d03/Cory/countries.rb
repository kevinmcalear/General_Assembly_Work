# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy: Rome, Pisa | pizza, pasta, more



countries = {

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
                    :food => ["pizza", "pasta", "more"]
                  }
                }

puts countries

puts countries[:italy][:food]

puts countries[:france][:cities].sample

def discuss_trip(countries, country)
case country
when :france
  puts "You haven't been to France"
else
  return "I was just in #{countries[country][:cities].sample}, #{country} and I really enjoyed the #{countries[country][:food].sample}"
end
end
puts "What country have you been to?"

country = gets.chomp.downcase.to_sym
puts discuss_trip(countries, country)

