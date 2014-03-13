class WordsController < ApplicationController
  def random
    render json: Word.order("Random()").first 
  end

end