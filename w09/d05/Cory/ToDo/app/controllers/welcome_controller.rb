class WelcomeController < ApplicationController
  def index
    # notes = Note.all
    # render json: @notes
  end

  def allnotes
    @notes = Note.all
    render json: @notes
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