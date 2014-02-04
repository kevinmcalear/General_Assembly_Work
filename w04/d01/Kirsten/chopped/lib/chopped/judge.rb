class Judge < ActiveRecord::Base
  self.validates(:name, {presence: true})
  has_many :dishRatings 

  def give_score(score, dish_id)
    DishRating.new(score: score, dish_id: dish_id, judge_id: self.id)
  end
end