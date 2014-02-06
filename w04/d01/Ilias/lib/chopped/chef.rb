class Chef < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  has_many :courses, through: :dishes

  def make_dish(course, dish_name)
    self.dishes.create({ name: dish_name, course_id: course.id })
  end
end