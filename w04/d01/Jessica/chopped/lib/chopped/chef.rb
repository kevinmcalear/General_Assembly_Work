class Chef < ActiveRecord::Base
  has_many :dishes
  validates :name, presence: true
  def make_dish(course, dish_name)
    self.dishes.create({ name: dish_name , course_id: course.id })
  end

end