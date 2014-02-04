class DishRating < ActiveRecord::Base
  self.validates(:score, { presence: true })
  belongs_to :dish
  belongs_to :judge
end