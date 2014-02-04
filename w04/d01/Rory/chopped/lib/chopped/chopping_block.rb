class ChoppingBlock < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course

  self.validates(:chef_id, { presence: true })

  self.validates(:course_id, { presence: true })

  def add_to_cb(chef, course)
  self.courses.create({chef: chef.id, course: course.id})
  end
end