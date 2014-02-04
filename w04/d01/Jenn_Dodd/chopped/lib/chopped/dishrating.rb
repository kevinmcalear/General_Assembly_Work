class DishRating < ActiveRecord::Base
  belongs_to :judge
  belongs_to :dish
  self.validates(:score, {presence: true})

end
