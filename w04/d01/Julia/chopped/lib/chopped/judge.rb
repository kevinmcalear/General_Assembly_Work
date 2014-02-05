class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true })
  has_many :dish_ratings
  has_many :dishes, through: :dish_ratings

  def rate_dish(dish, score)

    dish_ratings.create({score: score, dish: dish})
        #self.dishes.create({ name: dish_name, course_id: course.id })

  end

end