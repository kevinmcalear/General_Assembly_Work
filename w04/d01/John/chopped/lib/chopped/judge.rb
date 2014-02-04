require 'pry'
class Judge < ActiveRecord::Base
  has_many :dish_ratings
  has_many :dishes, { :through => :dish_ratings }
  self.validates(:name, { :presence => true })

  def score_dish(dish, score_num)
    # binding.pry
    # DishRating.create(:dish_id => dish.id, :score => score_num, :judge_id => self.id)
    self.dish_ratings.create(:dish_id => dish.id, :score => score_num)
    # binding.pry

    # self.dish_ratings.score << dish.score_num
  end
end