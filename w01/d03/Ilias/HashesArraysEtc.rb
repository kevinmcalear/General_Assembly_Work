# categories = {

#   cities: {
#     usa: ["NYC", "LA"],
#     france: ["Paris", "Nice"],
#     italy: ["Rome", "Pisa"]

#   },

#   food: {
#     usa: ["burgers", "hotdogs"],
#     france: ["croissants", "baguettes"],
#     italy: ["pasta", "pizza", "more"]

#   }
# }

# puts categories[:food][:italy]
# puts categories[:cities][:france].sample

countries = {

  usa: {
    cities: ["NYC", "LA"],
    food: ["burgers", "hot dogs"]
    },

  france: {
    cities: ["Paris", "Nice"],
    food: ["baguettes", "croissants"]
    },

  italy: {
    cities: ["Rome", "Pisa"],
    food: ["pizza", "pasta"]
    },
    
  countries_visited: ["usa", "italy"]
}

      def discuss_trip(countries, country)

        food = countries[country.downcase.to_sym][:food].sample
        city = countries[country.downcase.to_sym][:cities].sample

        if country == countries[:countries_visited][0] || country == countries[:countries_visited][1]
          return "I ate #{food} in #{city}, #{country.upcase}"
        else
          return "You've never been there!"

        end
      end

      puts discuss_trip(countries, "usa")
      puts discuss_trip(countries, "france")
      puts discuss_trip(countries, "italy")
