require 'httparty'

city = ARGV[0]
state = ARGV[1]


the_weather = HTTParty.get("http://api.wunderground.com/api/fe15bba3dcbb52e5/conditions/q/#{state}/#{city}.json")
the_temp = the_weather["current_observation"]["temp_f"]

puts "THE CURRENT TEMPERATURE IS: #{the_temp} DEGREES F"

hourly_weather = HTTParty.get("http://api.wunderground.com/api/fe15bba3dcbb52e5/hourly/q/#{state}/#{city}.json")

hourly_weather["hourly_forecast"].each do |hour|
puts "#{hour["FCTTIME"]["civil"]} : #{hour["temp"]["english"]} degrees F"

end