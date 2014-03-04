class Chef < ActiveRecord::Base
  has_many :dishes

  def make_dish(course, dish_name)
    dish = self.dishes.create({ name: dish_name, course_id: course.id })
  end
end