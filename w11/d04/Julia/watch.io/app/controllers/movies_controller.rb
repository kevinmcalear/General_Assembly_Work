require 'uri'

class MoviesController < ApplicationController
	def index
		render(:index)
	end

	# def new
	# 	render(:new)
	# end

	def create
		search_url = URI.encode("http://www.omdbapi.com/?t=#{params[:title]}")
		get_movie_data = HTTParty.get(search_url)
		results = JSON(get_movie_data)
		poster_url = results["Poster"]
		@movie = Movie.new(movie_params)
		@movie.poster = poster_url


		if @movie.save
			render json: @movie
		else
			render status: 400, nothing: true
		end
	end

	def update
		@movie = Movie.find(params[:id])

		if @movie.update(movie_params)
			render json: @movie
		else
			render status: 400, nothing: true
		end
	end

	def destroy
		@movie = Movie.find(params[:id])

		if @movie.destroy
			render json: {}
		else
			render status: 400, nothing: true
		end
	end

	def movie_params
		params.require(:movie).permit(:title, :poster, :seen)
	end

end