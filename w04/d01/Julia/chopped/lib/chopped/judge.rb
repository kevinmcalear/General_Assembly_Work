class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true })
  has_many :dish_ratings

  def rate_dish(score)
    self.dish_ratings.create({score: score})
        #self.dishes.create({ name: dish_name, course_id: course.id })

  end

end