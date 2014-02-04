class Dish < ActiveRecord::Base

  belongs_to :chef
  belongs_to :course
  belongs_to :dish_rating

  validates(:name, {presence: true})
  validates(:course_id, {presence: true})
  validate(:chef_id, {presence: true})
end
