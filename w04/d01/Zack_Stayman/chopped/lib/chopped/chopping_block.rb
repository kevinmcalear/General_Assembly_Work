class ChoppingBlock < ActiveRecord::Base
  has_many :chef_ids
  has_many :course_ids
   validates :chef_id, presence: true
   validates :course_id, presence: true
end