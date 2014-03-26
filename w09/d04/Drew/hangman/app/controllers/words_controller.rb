class WordsController < ApplicationController

  def random
    # basically a SQL statement
    render json: Word.order("RANDOM()").first
  end

end
