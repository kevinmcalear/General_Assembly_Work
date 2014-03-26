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
    @note = Note.find(params[:id])
    @note.update(complete: params[:complete])
    render json: @note
  end

  def destroy

  end
end