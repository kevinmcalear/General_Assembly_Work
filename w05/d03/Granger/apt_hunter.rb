# require 'nokogiri'
# require 'open-uri'
require 'pry'
require 'HTTParty'

# GOOGLE PLACES API KEY: AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c


party = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=-33.8670522,151.1957362&radius=500&types=food&name=harbour&sensor=false&key=AIzaSyAWkJ7TK8LOWDle1ABGhp8cxn_ThmctW6c")

binding.pry

# party["results"].first["name"]