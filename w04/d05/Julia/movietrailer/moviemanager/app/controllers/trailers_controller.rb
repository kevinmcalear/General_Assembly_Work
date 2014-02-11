class TrailersController < ApplicationController

	def index
		@movies = Movie.find(params[:movie_id])
		@trailers = Trailer.where(movie_id: params[:movie_id])
		render(:index)
	end

	def new
		@movies = Movie.find(params[:movie_id])
		render(:new)
	end

	def create
		@trailers = Trailer.create(title: params[:title], embed_url: params[:embed_url], movie_id: params[:movie_id])
		redirect_to("/movies")
	end

	def edit
		@trailers = Trailer.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@trailers = Trailer.find_by_id(params[:id])
		@trailers.update({title: params[:title], embed_url: params[:embed_url], movie_id: params[:movie_id]})
		redirect_to("/movies/#{@trailers.movie_id}/trailers")
	end

	def show
		@movies = Movie.find(params[:movie_id])
		@trailers = Trailer.find_by_id(params[:id])
		render(:show)
	end

	def destroy
		@trailers = Trailer.find_by_id(params[:id])
		@trailers.destroy
		redirect_to("/movies/#{@trailers.movie_id}/trailers")
	end

end