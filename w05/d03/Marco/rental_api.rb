require 'HTTParty'
require 'pry'
require 'json'

@api_key = "a4cc7c03c02b370efc696191b0abedea2d3d0c60"

def find_location(latitude, longitude)
  return @se_response = HTTParty.get("http://streeteasy.com/nyc/api/areas/for_location?lon=#{longitude}&lat=#{latitude}&key=#{@api_key}&format=json")

end


puts "what is the latitude?"
latitude = gets.chomp.to_f

puts "what is the longitude?"
# print "-"
longitude = gets.chomp.to_f

find_location(latitude, longitude)

puts "#{@se_response["city"]}, #{@se_response["state"]}. #{@se_response["name"]}"

