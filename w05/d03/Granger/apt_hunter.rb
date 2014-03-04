# require 'nokogiri'
# require 'open-uri'
require 'pry'
require 'HTTParty'

# GOOGLE PLACES API KEY: AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c
def neighborhood(api_return)
  right_hsh = api_return["results"].first["address_components"].select do |hsh|
     hsh["types"].include?("neighborhood")
   end

   neighborhood = right_hsh.first["long_name"]
end

def ny_search(search)
  HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{search.gsub(" ", "+")},+New+York,+NY&sensor=true&key=AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c")
end

party = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&sensor=false&key=AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c")

kitchen = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=533+west+51st,+New+York,+NY&sensor=true&key=AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c")

mid = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=30th+and+madison+NYC,+New+York,+NY&sensor=true&key=AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c")

binding.pry

# party["results"].first["name"]

##geocoder gem (wraps around google api)
## google API
##