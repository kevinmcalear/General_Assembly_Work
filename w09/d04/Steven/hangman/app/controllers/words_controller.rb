class WordsController < ApplicationController

  def random
    render json: Word.order("RANDOM()").first
  end

#   function randomWordAjax(){
# $.getJSON("/words/random", function(response){
# console.log(response.word);});
# }

end