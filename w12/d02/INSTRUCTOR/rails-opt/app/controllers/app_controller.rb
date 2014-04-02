class AppController < ApplicationController
  def index
    @posts = Post.all.includes(:author)
    @movies = Rails.cache.fetch(params[:s]) do
      HTTParty.get("http://www.omdbapi.com/?s=#{params[:s]}").to_json
    end
  end
end