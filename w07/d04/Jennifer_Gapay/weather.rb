require 'pry'
require 'json'
require 'HTTParty'



def return_weather (city, state)
  city  = "New_York"
  state = "NY"

  response = HTTParty.get("http://api.wunderground.com/api/d16ebd4ffdbbfb06/forecast/q/#{city}/#{state}.json")

  binding.pry


end  

return_weather("New York", "NY")

puts from_weather