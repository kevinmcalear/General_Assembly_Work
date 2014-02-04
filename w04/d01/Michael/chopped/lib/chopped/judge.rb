

class Judge < ActiveRecord::Base
  has_many :dish_ratings
  self.validates(:name, { presence: true })

  def gives_score(dish, score)
    dish_id = Dish.find_by(:name => dish.name)[:id]
    DishRating.create(
      :score => score, 
      :dish_id => dish_id
      # :judge_id =>judge.id
    )

  end

end