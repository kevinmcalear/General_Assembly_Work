# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy : Rome, Pisa | pizza, pasta, more

countries = {
  :usa => {
    :cities => ["NYC", "LA"],
    :food => ["burgers" "hot dogs"]
  },
  :france => {
    :cities => ["paris", "nice"],
    :food => ["baguettes", "croissants"]
  },
  :italy => {
    :cities => ["Rome", "Pisa"],
    :food => ["pizza", "pasta", "more"]
  }
}

def discuss_trip(countries, country)
  city = countries[country][:cities].sample
  food = countries[country][:food].sample
  puts "I was just in #{city} , #{countries.key(countries[country])}, and I really enjoyed the #{food}"
end

puts "What country did you go to?"
response = gets.chomp.downcase.to_sym

if response != :france
  puts discuss_trip(countries, response)
else
  puts "You've never been to france!"
end

def candy_print(array_index)
  while x <=2
    puts x
  end

index = 0
while index < candies.size
  puts candies[counter]
  index += 1
end







