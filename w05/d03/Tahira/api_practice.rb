require 'HTTParty'
require 'pry'

class Places

  def initilaize(location)
    location = location.gsub(" ", "+")
    search_url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=#{location}&sensor=true&key=AIzaSyB-SSsUvO3yxTilXyDz-ZFJoLhv0qLeUVc"
    map_url = "http://maps.googleapis.com/maps/api/staticmap?center=40.714728,-73.998672&zoom=12&size=400x400&sensor=false"
    from_google = HTTParty.get(search_url)
    @lat = from_google["results"][0]["geometry"]["location"]["lat"]
    @lng = from_google["results"][0]["geometry"]["location"]["lng"]
    @name = from_google["results"][0]["name"]
    map_url = "http://maps.googleapis.com/maps/api/staticmap?center=#{@lat},#{@lng}&zoom=15&size=400x400&sensor=false"
    @map = HTTParty.get(map_url)
  end

  def self.place_name
    return @name
  end

  def self.place_map
    return @map
  end

end 


