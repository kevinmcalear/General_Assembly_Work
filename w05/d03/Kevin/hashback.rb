require 'httparty'
require 'pry'

# this gets any tag in instagram and returns the first picture

def instagram_tag(tag)
iae = HTTParty.get("https://api.instagram.com/v1/tags/#{tag}/media/recent?client_id=8a67c3b89c51484ea8f6ac75de2bdc01")
puts iae["data"][0]["images"]["standard_resolution"]["url"]
end

instagram_tag("test")