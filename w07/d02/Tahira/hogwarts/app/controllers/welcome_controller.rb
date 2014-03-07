class WelcomeController < ApplicationController

  def index
    @houses = House.all
  end

end