class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  self.validates(:round, {presence: true} )
  self.validates(:ingredient, {presence: true})
  def eliminate(course_id)
    dishes = Dishes.find_by(:course_id=>course_id)[:id]
    
    ChoppingBlock.create(chef_id, course_id)
  end 
end