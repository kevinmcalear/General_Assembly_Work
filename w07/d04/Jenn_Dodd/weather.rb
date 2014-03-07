require 'httparty'
require 'pry'

def get_temp(city, state)
  state_formatted = state.upcase
  city_formatted = city.gsub(" ", "_")
  response = HTTParty.get("http://api.wunderground.com/api/65c4703c2538b6de/conditions/q/#{ state_formatted }/#{ city_formatted }.json")
  puts response['response']['version']
end

get_temp("San Francisco", "CA" )