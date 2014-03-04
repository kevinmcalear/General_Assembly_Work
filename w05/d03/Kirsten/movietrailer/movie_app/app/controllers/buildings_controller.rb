class BuildingsController < ApplicationController

def index
  @buildings = Building.all
  render(:index)
end  

def new
  @building = Building.new
  render(:new)
end

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

def show
  @building = Building.find(params[:id])
  render(:show)
end

def destroy
  @building = Building.find(params[:id])
  @building.destroy
  redirect_to building_path("/")
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
end