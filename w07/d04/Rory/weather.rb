require 'httparty'
require 'pry'

### Part 1
state_input = ARGV[-1]


if ARGV.count == 3
  city_input = ARGV[0]+"_"+ARGV[1]
elsif ARGV.count == 4
  city_input = ARGV[0]+"_"+ARGV[1]+"_"+ARGV[2]  
else
  city_input = ARGV[0]
end

#def weather(city, state)
#
  #results = HTTParty.get("http://api.wunderground.com/api/583bf89b0b0f5017/geolookup/conditions/q/#{state}/#{city}.json")
#
  #temp_f = results['current_observation']['temp_f']
  #print "Current temperature in #{city} is: #{temp_f} degrees.\n"
#end
#
#weather(city_input, state_input)

### Part 2
def weather(city, state)

  results = HTTParty.get("http://api.wunderground.com/api/583bf89b0b0f5017/features/hourly/geolookup/conditions/q/#{state}/#{city}.json")
  forecast = results["hourly_forecast"]
  time = forecast.map do |hour|
    time = hour["FCTTIME"]["civil"]
    temperature = hour["temp"]["english"]
    "#{time}: #{temperature}"
  end
end

weather(city_input, state_input)
