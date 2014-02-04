class DishRating < ActiveRecord::Base
  self.validates(:score, { presence: true })

  belongs_to :judge
  belongs_to :dish

end