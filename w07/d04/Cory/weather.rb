require 'httparty'

WEATHER_CLIENT_ID = ENV['WEATHER_CLIENT_ID']


# def get_data(state, city)
  from_weather = HTTParty.get("http://api.wunderground.com/api/#{WEATHER_CLIENT_ID}/conditions/q/#{ARGV[1]}/#{city}.json")
  print "THE CURRENT TEMPERATURE IS " 
  print from_weather["current_observation"]["temp_f"]
# end




