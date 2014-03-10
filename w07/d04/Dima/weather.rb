require 'httparty'
require 'json'
require 'pry'

town = ARGV

response = HTTParty.get("http://api.wunderground.com/api/Your_Key/conditions/q/CA/#{town}.json")
