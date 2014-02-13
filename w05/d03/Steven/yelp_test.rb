require 'rubygems'
require 'oauth'
require 'pry'
require 'json'

def yelp_call(food, neighborhood)
  food_split=food.split(" ").join("+")
  neighborhood_split=food.split(" ").join("+")
  city_split=food.split(" ").join("%20")
    consumer_key = 'fsMbqAQvSFxjy7AuxmZI2g'
    consumer_secret = '2FL86CMR4bXyME6za9fRUaTCVOk'
    token = 'hcC6XYhYrjE47ho7FqdhkyHGGMyfF-L4'
    token_secret = 'rYLa6Qdj2bFV8pcL0AmUdLKzag0'

    api_host = 'api.yelp.com'

    consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
    access_token = OAuth::AccessToken.new(consumer, token, token_secret)

    path = "/v2/search?term=#{food_split}&location=brooklyn&#{neighborhood_split}&limit=3&sort=0"

    
    #access_token.get(path).body

    from_yelp = access_token.get(path).body
    yelp_hash = JSON(from_yelp)
    results = yelp_hash["businesses"].map do |business|
      "Hey Man, while you're in #{neighborhood}, go get some #{food}  at #{business["name"] }! "
    end

  binding.pry

end



yelp_call("french onion soup", "carroll gardens")

puts results

#http://api.yelp.com/v2/search?term=food&location=San+Francisco
