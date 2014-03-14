class WelcomeController < ApplicationController
  def index
    render :index
  end

  def create
    @note = Note.create(list: params[:list], completed: false)  
    render json: @note
  end

  def update

  end

  def destroy

  end
end