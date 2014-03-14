require 'HTTParty'
require 'pry'

class Weather
  def self.forecast(city)
    wunderground_current(city)
    wunderground_hourly(city)
    puts "Here is the forecast for: #{city}"
    puts "THE CURRENT TEMPERATURE IS: "+@current["current_observation"]["temperature_string"]
  
   @hourly["hourly_forecast"].each do |forecast|
      
      time = forecast["FCTTIME"]["pretty"]
      weather = forecast["temp"]["english"]

      puts "#{time}: #{weather} degress Fahrenheit"
    end 
  end
  
  def self.wunderground_current(city)
    key = "b9293d90fa54e8b1"
    city = city.gsub(" ","_")
    @current = HTTParty.get("http://api.wunderground.com/api/#{key}/conditions/q/CA/#{city}.json")
  end 

  def self.wunderground_hourly(city)
    key = "b9293d90fa54e8b1"
    city = city.gsub(" ","_")
    @hourly = HTTParty.get("http://api.wunderground.com/api/#{key}/hourly/q/CA/#{city}.json")
  end 

end

Weather.forecast(ARGV[0])