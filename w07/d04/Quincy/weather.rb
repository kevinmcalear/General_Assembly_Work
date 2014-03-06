require 'httpparty'
require 'JSON'
require 'pry'

#1645ea23095e7136

#GET http://api.wunderground.com/api/1645ea23095e7136/features/settings/q/query.format


def weather(city, state)

  binding.pry
  response = HTTParty.get("http://api.wunderground.com/api/1645ea23095e7136/date.hour/lang/q/#{state}/#{city}.json")

  response[:"hourly_forecast"][0]


end
