
require 'httparty'


  response = HTTParty.get("http://api.wunderground.com/api/0059138692228104/conditions/q/#{ARGV[1]}/#{ARGV[0]}.json")
  puts "The current temperature in #{ARGV[0]} is #{response["current_observation"]["temp_f"]}"

if ARGV[2] == "hourly"
  hourly = HTTParty.get("http://api.wunderground.com/api/0059138692228104/hourly/q/#{ARGV[1]}/#{ARGV[0]}.json")
  hourly["hourly_forecast"].each do |temp|
    time = temp["FCTTIME"]["civil"]
    weather = temp["temp"]["english"]
    puts "The weather at #{time} is #{weather}"
  end
end
