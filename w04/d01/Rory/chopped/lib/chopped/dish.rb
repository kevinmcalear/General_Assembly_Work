class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings
  self.validates(:name, { presence: true })
  self.validates(:course_id, {presence: true})
  self.validates(:chef_id, {presence: true})
end