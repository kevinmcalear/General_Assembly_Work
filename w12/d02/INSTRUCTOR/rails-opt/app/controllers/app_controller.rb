class AppController < ApplicationController
  def index
    @posts = Post.all
    #@movies = HTTParty.get("http://www.omdbapi.com/?s=#{params[:s]}").to_json
  end
end