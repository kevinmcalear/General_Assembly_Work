require 'httparty'
require 'pry'

def weather_update(city, state)

  # state.upcase!

  # city.downcase!
  # if city
  #   if city.include?(" ")
  #     city.gsub(" ", "_")
  #   end
  #   city
  # end

  # WUNDERGROUND_API_KEY = ENV[“WUNDERGROUND_API_KEY”]
  url = "http://api.wunderground.com/api/4de68b348aa3d7f4/conditions/q/#{state}/#{city}.json"
  encoded_url = URI.encode(url)

  @response = HTTParty.get(encoded_url)
end

# puts "enter city" 
# city = gets.chomp.downcase

# puts "enter state"
# state = gets.chomp.upcase

# weather_update(city, state)

if ARGV[0] != "hourly"
  weather_update(ARGV[0], ARGV[1])
  puts @response["current_observation"]["temp_f"]
end