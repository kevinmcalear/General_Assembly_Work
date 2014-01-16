# USA : NYC, LA | burgers, hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy : Rome, Pisa | pizza, pasta, more

# usa = [:foods]=[{"burgers", "hot dogs"}{:cities => "New York", "LA"}]

# france [{:foods => "baguettes", "croissants"} {:cities => "Paris" "Nice"}]

# italy = [{:foods => "pizza", "pasta", "more"} {:cities =>"Rome", "Pisa"}]



# countries = {:country => [:usa => {[:cities => ["New York", "LA"]} :france, :italy]}


# usa = :foods => "burgers", "hot dogs"

# countries = ["USA", "Italy", "France"]

# :cities = ["NY", "LA"]

countries = {
  :usa => {
    :cities => ["NYC", "LA"],
    :food => ["burgers" "hot dogs"]
  },
  :france{
    :cities => ["paris", "nice"],
    :food => ["baguettes", "croissants"]
  },
  :italy => {
    :cities => ["Rome", "Pisa"],
    :food => ["pizza", "pasta", "more"]
  }
}

puts countries[:italy][:food]






