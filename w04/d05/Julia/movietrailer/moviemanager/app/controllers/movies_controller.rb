class MoviesController < ApplicationController
	def index
		@movies = Movie.all
		render(:index)
	end

	def new
		render(:new)
	end

	def create
		@movies = Movie.create({title: params[:title], year: params[:year], poster_url: params[:poster_url]})
		redirect_to("/movies")
	end

	def edit
		@movies = Movie.find_by_id(params[:id])
		render(:edit)
	end

	def update
		@movies = Movie.find(params[:id])
		@movies.update({title: params[:title], year: params[:year], poster_url: params[:poster_url]})
		redirect_to("/movies/#{@movies.id}")
	end

	def show
		@movies = Movie.find_by_id(params[:id])
		render(:show)
	end

	def destroy
		@movies = Movie.find(params[:id])
		@movies.destroy
		redirect_to("/movies")
	end

end