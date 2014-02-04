class DishRating < ActiveRecord::Base
  belongs_to :dish
  belongs_to :judge
 
 self.validates(:name, { presence: true })
end 