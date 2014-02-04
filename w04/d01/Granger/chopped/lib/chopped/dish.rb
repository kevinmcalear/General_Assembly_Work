require 'pry'

class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings

  def score
    sum = 0
    self.dish_ratings.reduce(0) {|sum, rating| sum + rating.score}
  
     # binding.pry
  end

 

end