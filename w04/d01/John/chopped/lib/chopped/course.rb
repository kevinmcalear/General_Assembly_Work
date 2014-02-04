class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  has_many :chefs, :through => :chopping_blocks
  self.validates(:round, { :presence => true })
  self.validates(:ingredient, { :presence => true })

  def find_worst_dish
    scores = {}
    self.dishes.each do |dish|
      sum = 0
      dish.dish_ratings.each {|rating|
        sum += rating[:score]}
      scores[dish] = sum / dish.dish_ratings.count 
    end

    return scores.sort_by { |key, value| value }.first[0]
  end

end