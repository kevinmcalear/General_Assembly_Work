countries = {
    :usa => {
        :cities => ["NYC", "LA"], 
        :food => ["hot dog", "hamburger"]},
    
    :italy => {
        :cities=>["Roma", "Pisa"], 
        :food => ["pizza", "pasta"]},
    
    :france => {
        :cities => ["Paris", "Nice"], 
        :food => ["baguette", "croissants"]}
}

def discuss_trip(countries, country)
    country_key = country.downcase.to_sym
    city = countries[country_key][:cities].sample
    food = countries[country_key][:food].sample
    countries_been_to = ["USA"]
    if country_key != countries_been_to.each 
        return "You haven't been to that country!"
    else
        return "I was just in #{city}, #{country} and I really enjoyed the #{food}."
    end
end

puts discuss_trip(countries, "USA")

## ACCIDENTALLY DELETED SOMETHING