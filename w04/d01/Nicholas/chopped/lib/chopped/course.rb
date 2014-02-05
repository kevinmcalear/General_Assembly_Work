class Course < ActiveRecord::Base
  has_many :dishes
  validates(:round, {presence: true})
  validates(:ingredient, {presence: true})
end