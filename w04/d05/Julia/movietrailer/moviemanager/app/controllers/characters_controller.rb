class CharactersController < ApplicationController
	def index
		@movie_characters = Character.where(movie_id: params[:movie_id])
		@trailer_characters = Character.where(trailer_id: params[:trailer_id])
	end

	def new
		@movies = Movie.find(params[:movie_id])
		render(:new)
	end

	def create
		@characters = Character.create({name: params[:name], photo_url: params[:photo_url], movie_id: params[:movie_id]})
		redirect_to("/movies")
	end

	def show
		@movies = Movie.find(params[:movie_id])
		@characters = Character.find_by_id(params[:id])
		render(:show)
	end

	def edit
		@characters = Character.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@movies = Movie.find(params[:movie_id])
		@characters = Character.find_by_id(params[:id])
		@characters.update({name: params[:name], photo_url: params[:photo_url], movie_id: params[:movie_id]})
		redirect_to("/movies/#{@characters.movie_id}/characters")
	end

	def destroy
		@movies = Movie.find(params[:movie_id])
		@characters = Character.find_by_id(params[:id])
		@characters.destroy
		redirect_to("/movies/#{@characters.movie_id}/characters")
	end

end