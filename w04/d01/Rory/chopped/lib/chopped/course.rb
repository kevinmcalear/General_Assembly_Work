class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks
  self.validates(:round, { presence: true })
end