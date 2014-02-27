require 'httparty'
require 'pry'

api_key = '2d48a02fe0070bce'

def current_temperature(city, state)
  api_url = "http://api.wunderground.com/api/2d48a02fe0070bce/conditions/q/#{state}/#{city}.json"
  from_api = HTTParty.get(api_url)
  current_temp = from_api["current_observation"]["temp_f"]
  puts "The current temperature is #{current_temp} degrees F"
end

puts current_temperature("Austin", "TX")

def hourly_forecast(city, state)
  api_url = "http://api.wunderground.com/api/2d48a02fe0070bce/hourly/q/#{state}/#{city}.json"
  from_api = HTTParty.get(api_url)
  from_api["hourly_forecast"].each do |forecast|
    weather_time = forecast["FCTTIME"]["civil"]
    weather_temp = forecast["temp"]["english"]
    puts "#{weather_time} #{weather_temp}"
  end
end

puts hourly_forecast("Austin", "TX")