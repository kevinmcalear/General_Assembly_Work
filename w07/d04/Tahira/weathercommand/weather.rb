require "httparty"


city = ARGV[-2]
state = ARGV[-1]

city = city.gsub(" ","_")


#returns current weather
def weather(city, state)
  request = "http://api.wunderground.com/api/747e267558954ba9/conditions/q/#{state}/#{city}.json"
  weather = HTTParty.get(request)
  return weather["current_observation"]["temperature_string"]
end

#prints out weather hourly
def weather_hourly(city, state)
  request = "http://api.wunderground.com/api/747e267558954ba9/hourly/q/#{state}/#{city}.json"
  hourly = HTTParty.get(request)
  hourly["hourly_forecast"].each do |hour| 
    puts "#{hour["FCTTIME"]["civil"]}: #{hour["temp"]["english"]}F"
  end
end

puts "CURRENT TEMPERATURE: #{weather(city, state)}"
weather_hourly(city,state)


