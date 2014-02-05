class Judge < ActiveRecord::Base
  self.validates(:name, {presence: true} )

  def judge_a_dish(score, dish)
    dish.dish_ratings.create({score: score, judge_id: self.id})
  end


end