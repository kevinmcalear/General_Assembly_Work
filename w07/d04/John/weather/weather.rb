require 'httparty'
require 'pry'

# eb106120ad5bcf03

def current_temp(city, state)
  city = city.gsub(" ", "_")
  resp_current_temp = HTTParty.get("http://api.wunderground.com/api/eb106120ad5bcf03/conditions/q/#{state}/#{city}.json")

  temp = resp_current_temp["current_observation"]["temp_f"]

  # puts "THE CURRENT TEMPERATURE IS: #{temp} DEGREES F"

  resp_hourly = HTTParty.get("http://api.wunderground.com/api/eb106120ad5bcf03/hourly/q/#{state}/#{city}.json")
  

  # hour = resp_hourly["hourly_forecast"][0]["FCTTIME"]["civil"]
  # temp_at_hour = resp_hourly["hourly_forecast"][0]["temp"]["english"]
  
  hourly = resp_hourly["hourly_forecast"].map do |hour|
    {
      hour: hour["FCTTIME"]["civil"],
      temp: hour["temp"]["english"]
    }
  end
  
  # hourly.each do |forecast|
  #   puts "#{forecast[:hour]} : #{forecast[:temp]} degrees F"
  # end

  hourly_every_3 = hourly.select { |e| hourly.index(e) % 3 == 0 }

  hourly_every_3.each do |forecast|
    puts "#{forecast[:hour]} : #{forecast[:temp]} degrees F"
  end
end


city, state = ARGV

current_temp(city, state)





