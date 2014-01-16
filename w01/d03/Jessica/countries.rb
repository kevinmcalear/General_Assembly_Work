# USA : NYC, LA burgers, hot dog
# FRANCE : PARIS, NICE croissant, baguettes
# ITALY: ROME, PISA pizza pasta more

countries = { 
    :usa => {
      :cities => ["NYC", "LA"], 
      :food => ["Hot Dog", "Burger"]
    }, 

  :france => {
    :cities => ["Paris", "Nice"], 
    :food => ["croissant", "baguettes"]
  }, 

  :italy => {
    :cities => ["Rome", "Pisa"], 
    :food => ["pasta", "pizza", "more"]
  }
}

# puts countries


# countries[:france][:cities].sample


def discuss_trip(countries, country)
case country
when :france
  return "You haven't been to France."
else
  city = countries[country.downcase.to_sym][:cities].sample
  food = countries[country][:food].sample 
  
  puts "I was just in #{city}, #{country.capitalize} and I really enjoyed the #{food}."
end
end


puts "What country did you go to?"
country = gets.chomp.downcase.to_sym
puts discuss_trip(countries, country)

