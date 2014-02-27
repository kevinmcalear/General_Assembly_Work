require 'httparty'
require 'json'
require 'pry'
require 'rubygems'
require 'oauth'

def yelp_call(theater)

  search_theater = theater.gsub(" ", "+")

  consumer_key = 'jNiXzqCddqS4GoNBKF2F1g'
  consumer_secret = '25dQg0s4295o9kelGH0PaoSrgCg'
  token = 'xF0NGrMyVrUj7rTDbCtFO11eX5ObsAH4'
  token_secret = 'wMIWb_f6sX8G0XwWevklEWUBpYA'

  api_host = 'api.yelp.com'

  consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
  access_token = OAuth::AccessToken.new(consumer, token, token_secret)

  path = "/v2/search?term=#{search_theater}+performing+arts+theater&location=new+york"
  # binding.pry
  yelp_search = access_token.get(path).body

  # yelp_results = JSON(yelp_search)
  y = JSON(yelp_search)
  yelp = JSON(yelp_search)["businesses"].map do |business|
    { name: business["name"],
      address: business["location"]["display_address"]
      # neighborhood: business["location"]["neighborhoods"][0]
    }
    # "#{business["name"]} is in #{business["location"]["neighborhoods"][0]}"
  end

  yelp.each do |business|
    puts business[:name]
    business[:address].each do |line|
      puts line
    end
    puts
  end

  # yelp = JSON(yelp_search)
  binding.pry

  # from_itunes_hash["results"][0]["previewUrl"]

end

yelp_call("joyce")




