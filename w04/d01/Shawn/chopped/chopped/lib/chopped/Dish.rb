class Dish < ActiveRecord::Base
  self.validates(:name, { presence: true } )
  belongs_to :chef
  has_many :dish_ratings
  belongs_to :course
end