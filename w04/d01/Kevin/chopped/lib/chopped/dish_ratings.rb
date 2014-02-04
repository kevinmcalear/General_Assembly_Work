class DishRating < ActiveRecord::Base
  belongs_to :judge
  belongs_to :dish
  validates :score, { presence: true }
  
end