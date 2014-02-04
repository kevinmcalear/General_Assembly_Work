class Course < ActiveRecord::Base
  self.validates(:round, { presence: true } )
  self.validates(:ingredient, { presence: true } )

  has_many :dishes
  has_many :chopping_blocks
end