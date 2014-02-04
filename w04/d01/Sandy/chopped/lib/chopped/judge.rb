class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true })
  has_many :dish_ratings
end