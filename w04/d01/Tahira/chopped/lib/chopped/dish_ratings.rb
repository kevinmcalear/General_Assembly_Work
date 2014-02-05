#dish_ratings.rb

class DishRating < ActiveRecord::Base
  belongs_to :judges
  belongs_to :dishes  

  def score(score)
    return score
  end
end