class Course < ActiveRecord::Base
  has_many :dishes

  self.validates(:round, {presence: true})

end