require 'httparty'
require 'json'
require 'pry'


def get_data(zip, percentile)

    from_nytimes = HTTParty.get("http://api.nytimes.com/svc/real-estate/v2/listings/percentile/#{percentile}.json?geo-extent-level=zip&geo-extent-value=#{zip}&date-range=2013-Q1&bedrooms=2&api-key=8e5d8310f853de0c185afc07e773a054:12:31728872")
    return from_nytimes["results"][0]

end

binding.pry

