class TrailersController < ApplicationController

  def index
    @trailers = Trailer.all
    render(:index)
  end
end