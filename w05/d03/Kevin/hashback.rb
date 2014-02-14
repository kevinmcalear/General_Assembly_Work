require 'httparty'
require 'pry'

# this gets any tag in instagram and returns the first picture

def instagram_tag(tag)
iae = HTTParty.get("https://api.instagram.com/v1/tags/#{tag}/media/recent?client_id=8a67c3b89c51484ea8f6ac75de2bdc01")
return iae["data"][0]["images"]["standard_resolution"]["url"]
end


puts "Enter your hashtag."
input = gets.chomp

result = instagram_tag(input)

puts result 