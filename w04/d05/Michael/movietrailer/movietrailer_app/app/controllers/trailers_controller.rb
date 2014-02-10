class TrailersController < ApplicationController
  self.before_action(:load_trailer, {only: [:update,:destroy]})

  def create
    Trailer.create(
      {title: params[:title], 
      embed_url: params[:embed_url], 
      movies_id: params[:movies_id]})
    redirect_to(:back)
  end  
  def update
    @trailer.update({embed_url: params[:embed_url]}) 
    redirect_to(:back)
  end
  def destroy
    @trailer.destroy
    redirect_to(:back)
  end 

  private
  def load_trailer
    @trailer = Trailer.find(params[:id])
  end 

end