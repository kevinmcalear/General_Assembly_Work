class Dish < ActiveRecord::Base
  belongs_to :chef
  has_many :dish_ratings
  validates :course_id, presence: true
  validates :chef_id, presence: true
  validates :name, presence: true


end