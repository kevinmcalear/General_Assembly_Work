class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true })

  has_many :dishratings
  has_many :dishes, through: :dishratings

  def give_score(dish, score)
    DishRating.create()
  end
end