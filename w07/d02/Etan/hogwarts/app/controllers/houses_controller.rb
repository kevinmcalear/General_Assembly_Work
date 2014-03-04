class HousesController < ApplicationController
  before_action :load_house, only: [:show]
  
  def index
    @houses = House.all
  end

  def show
  end

  private

  def load_house
    return @house = House.find(params[:id])
  end

end