class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  has_many :chefs, :through => :chopping_blocks
end