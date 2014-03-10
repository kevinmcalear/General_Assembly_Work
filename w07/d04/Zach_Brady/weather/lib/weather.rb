require 'httparty'
require 'pry'

def get_temp(city, state)
  city_format = city.gsub(" ","_")
  from_wunderground = HTTParty.get("http://api.wunderground.com/api/1e07776bb450be0a/conditions/q/#{state}/#{city_format}.json")
  temp = from_wunderground["current_observation"]["temp_f"]
  return temp
end

def get_hourly(city, state)
  city_format = city.gsub(" ","_")
  from_wunderground = HTTParty.get("http://api.wunderground.com/api/1e07776bb450be0a/hourly/q/#{state}/#{city_format}.json")
  forecast = from_wunderground["hourly_forecast"]
  results = forecast.map do |hour|
    time = hour["FCTTIME"]["civil"] 
    temperature = hour["temp"]["english"]
    "#{time}: #{temperature}"
  end
end

if ARGV[0] != "hourly"
  puts "The current temperature is #{get_temp(ARGV[0], ARGV[1])} degrees fahrenheit."
else
  puts "The hourly forecast is as follows: #{get_hourly(ARGV[1], ARGV[2])}"
end