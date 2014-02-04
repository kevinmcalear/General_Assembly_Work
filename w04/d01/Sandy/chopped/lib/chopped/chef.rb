class Chef < ActiveRecord::Base
  self.validates(:name, { presence: true })
  has_many :dishes
  has_many :chopping_blocks

  
  
  def make_dish(course, dish_name)
    self.dishes.create({ name: dish_name, course_id: course.id })
  end
end

