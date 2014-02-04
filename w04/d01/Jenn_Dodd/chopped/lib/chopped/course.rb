class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  has_many :chefs, through: :chopping_blocks
  self.validates(:round, {presence: true})
  self.validates(:ingredient, {presence: true})
end