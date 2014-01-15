# countries = [usa, france, italy]

# usa = [nyc, la]

# france = [paris, nice]

# italy = [rome, pisa]

# nyc = [burgers, hot_dogs]

# la = [burgers, hot_dogs]

# paris = [baquettes, croissants]

# nice = [baquettes, croissants]

# rome = [pizza, pasta, more]

# pisa = [pizza, pasta, more]

countries = {
  :usa => {
    :cities => ["NYC", "LA"],
    :food => ["burgers", "hot dogs"]
  },

  :france => {
    :cities => ["Paris", "Nice"],
    :food => ["baquettes", "croissants"]
  },

  :italy => {
    :cities => ["Rome", "Pisa"],
    :food => ["pizza", "pasta", "more"]
  }
}

# countries = {
#   :usa => {
#     :nyc => ["burgers", "hot dogs"], 
#     :la => ["burgers", "hot dogs"]
#     }, 
#   :france => {
#     :paris => ["baquettes", "croissants"], 
#     :nice => ["baquettes", "croissants"]
#     }, 
#   :italy => {
#     :rome => ["pizza", "pasta", "more"], 
#     :pisa => ["pizza", "pasta", "more"]
#   }
# }

# # puts countries[:france][:paris].sample

# def discuss_trip(countries, country)
#   food = countries[country.to_sym][:food].sample
#   city = countries[country.to_sym][:cities].sample
#   return "I was just in #{city}, #{country.capitalize} and I really enjoyed the #{food}."
# end

# puts "What country did you go to?"
# input = gets.chomp.downcase


# if input == "usa" || input == "italy"
#   puts discuss_trip(countries, input)
# else
#   puts "You've never been there.. Liar."
# end

candies = ["mars bar", "twix", "100 grand"]

counter = candies.count
while counter >= 0 
  puts "#{candies[counter]}"
  counter  -= 1
end

