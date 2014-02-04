class Dish < ActiveRecord::Base

  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings

  validates(:name, {presence: true})
  validates(:course_id, {presence: true})
  validates(:chef_id, {presence: true})
end
