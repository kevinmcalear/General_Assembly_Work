# USA: NYC, LA | burgers hot dogs
# France : Paris, Nice | baguettes, croissants
# Italy: rome, Pisa | pizza, pasta, more

# country_cuisine = [{
#   :usa => [:nyc => "burgers", :la => "hotdogs"]
#   },{
#   :france => [:paris => "baguettes", :nice => "croissants"]
#   },{
#   :italy => [:rome => "pizza", :pisa => "pasta"]
#   }]

# country_cuisine = {{:usa =>["NYC", "LA"]}=>["burgers","hotdogs"],
#  {:france =>["Paris", "Nice"]}=>["baguettes","croissants"],
#   {:italy =>["Rome", "Pisa"]}=>["pizza","pasta","more"]}

  countries = {
    :usa =>{
      :cities =>["NYC", "LA"],
      :food =>["burgers", "hot dogs"]
    },
    :france =>{
      :cities =>["Paris", "Nice"],
      :food =>["baguettes", "croissants"]
    },
    :italy =>{
      :cities =>["Rome", "Pisa"],
      :food =>["pizza", "pasta", "more"]
    }
  }

  def discuss_trip(countries, country)
    # I was just in NYC, USA  and I really enjoyed the hot dogs
    country = country.to_sym
   city = countries[country.to_sym][:cities].sample
   food = countries[country.to_sym][:food].sample
   return "I've just traveled to #{city} #{country} and I really
   enjoyed the #{food}"
  end

  puts "enter country"
  input = gets.chomp.downcase
  


  if input == "usa"  || input == "italy"
  puts discuss_trip(countries, input)
else
  puts "I've never been to this country"
end
