class Chopping_block < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course

  validates(:chef_id, {presence: true})
  validates(:course_id, {presence: true})

end