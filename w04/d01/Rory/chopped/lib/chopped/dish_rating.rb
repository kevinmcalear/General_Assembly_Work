class DishRating < ActiveRecord::Base
  belongs_to :dish
  belongs_to :judge
  self.validates(:score, { presence: true })
  self.validates(:dish_id, { presence: true })
  self.validates(:judge_id, { presence: true })

end
