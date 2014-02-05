class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true })
  has_many :dishes, ({:through => :dish_ratings})
  has_many :dish_ratings

  def dish_score(score_number)
    self.dish_ratings.create({ score: score_number})
  end
end