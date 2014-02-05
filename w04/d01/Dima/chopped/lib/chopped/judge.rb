class Judge < ActiveRecord::Base
  self.validates(:name, {presence: true})
  has_many(:dish_ratings)

  def rate_dish(dish_name)
    score_point = gets.chomp
    dish = Dish.find_by(name: dish_name)
    dish_rating = self.dish_rating.create(dish_id: dish.id, score: score_point)
  end
end