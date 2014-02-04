class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
end