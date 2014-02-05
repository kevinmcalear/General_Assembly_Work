class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings
  has_many :judges, ({:through => :dish_ratings})


  def dish_rating(score_number)
    self.dish_ratings.create({ score: score_number})
  end
end