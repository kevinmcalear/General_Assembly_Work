class GamesController < ApplicationController
  def new
    render :new
  end

  def create
    @game = Game.create(won: params[:won])
    #don't actually need @, just using for convention
    render json: @game
    #it's customary to respond with the newly created object
    #a json representation of the game is rendering
    #otherwise it will try to render an html template
    #servers get requests and they respond.  in this case we've received
    #a request and we need to respond with something.
  end

end