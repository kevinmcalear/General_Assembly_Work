class Chef < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks

  self.validates(:name, { presence: true })

  def make_dish(course, dish_name)
    self.dishes.create({ name: dish_name, course_id: course.id })
  end
#
  #def gets_put_on_cb(chef, course)
    #self.chopping_blocks.create({ chef_id: #chef.id, course_id: course.id })
  #end
end