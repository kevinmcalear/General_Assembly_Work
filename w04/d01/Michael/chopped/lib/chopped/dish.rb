class Dish < ActiveRecord::Base
  self.validates(:name, {presence: true})
  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings
end