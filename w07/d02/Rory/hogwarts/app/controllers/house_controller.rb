class HouseController < ApplicationController

  def new
    @house = House.new(house_params)
  end

  def create
    @house = House.new(house_params)
  end

  def index
    @houses = House.all
  end

  def show
    @houses = House.find(:id)
  end

  private
  def house_params
    return {
    name: params[:name],
    img_url: params[:image_url],
    created_at: params[:created_at],
    updated_at: params[:updated_at]}
  end

end