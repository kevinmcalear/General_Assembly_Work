class Chef < ActiveRecord::Base
  has_many :dishes

  self.validates(:name, { presence: true })

  def cook(course, dish_name)
    self.dishes.create({ name: dish_name, course_id: course.id })
  end


end