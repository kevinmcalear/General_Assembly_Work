class TrailersController < ApplicationController
  def create
    Trailer.create(
      {title: params[:title], 
      embed_url: params[:embed_url], 
      movies_id: params[:movies_id]})
    redirect_to(:back)
  end  
end