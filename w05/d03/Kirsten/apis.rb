# I re-used my movies app just to have something to work with. I made a building model and
# made some very basic menus. If you start at /buildings, you can add a building. When you 
# do I used the google geocoding api to get the latitude and longitude. Then using this, 
# I used the google places api to get a list of restaurants around that address. 
# Whenever you add the building, it automatically puts a list of restaurants around that 
# location in the show page. 

# methods for doing this: (in the building controller)
def create
  @building = Building.new(user_params)
  get_lat_lon(@building.address)
  @building.latitude = @lat_lon[0]
  @building.longitude = @lat_lon[1]
  @building.save
  get_places(@building.latitude, @building.longitude)
  @building.places = @places
  render(:show)
end

private

def user_params
    params.require(:building).permit(:name, :address, :year_built, :photo_url, :latitude, :longitude)
  end

def get_lat_lon(address)
  address = address.gsub(" ", "+")
  from_google = HTTParty.get("https://maps.googleapis.com/maps/api/geocode/json?address=#{address}&sensor=true&key=AIzaSyDmTl8Fxn9nQ6rE0Fs9EiTqMviIqhKr7Qg")
  @lat_lon = Array.new
  @lat_lon << from_google["results"][0]["geometry"]["location"]["lat"]
  @lat_lon << from_google["results"][0]["geometry"]["location"]["lng"]
end

def get_places(latitude, longitude)
  from_google = HTTParty.get("https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=#{latitude},#{longitude}&radius=300&types=food&sensor=true&key=AIzaSyDmTl8Fxn9nQ6rE0Fs9EiTqMviIqhKr7Qg")
  @results = from_google["results"]
  @places = @results.map { |item| item["name"]}
end

