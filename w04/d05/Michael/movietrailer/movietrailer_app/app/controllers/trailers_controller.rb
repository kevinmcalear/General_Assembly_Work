class TrailersController < ApplicationController
  def create
    Trailer.create(
      {title: params[:title], 
      embed_url: params[:embed_url], 
      movies_id: params[:movies_id]})
    redirect_to(:back)
  end  
  def update
    @trailer = Trailer.find_by(id: params[:id])
    @trailer.update({embed_url: params[:embed_url]}) 
    redirect_to(:back)
  end
  def destroy
    @trailer= Trailer.find_by(id: params[:id])
    @trailer.destroy
    redirect_to(:back)
  end 
end