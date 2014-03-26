class NotesController < ApplicationController
  def index
  end

  def create
    @note = Note.create(content: params[:content], done: false)
    render json: @note
  end

  def update
    @note = Note.find(params[:id])
    @note.update(done: params[:done])
    render json: @note
  end

  def destroy
    @note = Note.find(params[:id])
    @note.delete
    render json: @note
  end

  def latest
    @note = Note.last
    render json: @note
  end

end