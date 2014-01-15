
#USA :NYC, LA | burgers, hot dogs
#France : Paris, Nice | baguettes, croissants
#Italy: Rome, Pisa | pizza, pasta, more

# First Attempt:
#countries = [{:usa => [{:nyc => "burgers", :la => "hot dogs"}]}, 
#             {:france => [{:paris => "baguettes", :nice => croissants}]}, 
#             {:italy => [:rome => "pizza", :pisa => "pasta"]}]

# Second Attempt:
#countries = {:country => {:usa => {[:cities => ["NYC", "LA"]},:food => ["Burgers", "Hot Dogs"]},:france => {[:cities => ["Paris", "Nice"]},:food => ["Baguettes", "Croissants"]},:italy => {[:cities => ["Rome", "Pisa"]},:food => ["Pizza", "Pasta"]]}

countries = {
  :usa => {
    :cities => ["NYC", "LA"],
    :food => ["Burgers", "Hot Dogs"]
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

#Random City from France 
#puts countries[:france][:cities].sample

def discuss_trip(countries, country)
  city = countries[country][:cities].sample 
  food = countries[country][:food].sample
  if country == :france
    puts "You have never been to France, You liar!"
  else
  puts "I was just in #{city}, #{countries.key(countries[country])} and I really enjoyed the #{food}."
  end
end

puts discuss_trip(countries, :france)

 #puts "What country did you go to?"
 #answer = gets.chomp.downcase.to_sym
 #if answer != :france
 #puts discuss_trip(countries, answer)
 #else
 # puts "You have never been to France, you liar!"
 #end

# have only been to italy and usa
# if they try to say france it will say you have never been to france

#countries_two = {
#  :usa => {
#    :nyc => ["burgers", "hot dogs"]
#    :la => ["burgers", "hot dogs"]
#
#  }
#}