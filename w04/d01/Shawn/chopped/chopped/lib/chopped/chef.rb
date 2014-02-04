class Chef < ActiveRecord::Base
    
  has_many :dishes 

  def make_dish(course, dish_name)
    self.dishes.create( { name: dish_name, course_id: course.id })
  end

  def chop(course, chef)
    ChoppingBlock.create( {course_id: course.id, chef_id: chef.id } )

  end

end