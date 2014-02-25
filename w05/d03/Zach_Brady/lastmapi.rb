require 'HTTParty'
require 'JSON'

# API Code source: http://www.last.fm/api/show/geo.getMetroArtistChart



def shows_in_(city, genre)
  city = city.gsub(" ", "+")
  city = city.downcase
  genre = genre.downcase
  from_http = HTTParty.get("http://ws.audioscrobbler.com/2.0/?method=geo.getevents&location=#{city}&tag=#{genre}&api_key=1e14474a0293989d2e1af696359cbe5a&format=json")
  from_http_as_hash = JSON(from_http)
  return from_http_as_hash["events"]
end

puts shows_in_("Hackensack", "punk")