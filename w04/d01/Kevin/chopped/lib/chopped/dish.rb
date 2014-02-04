class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  has_many :dish_ratings
  validates :name, { presence: true }
  has_many :judges, through: :dish_ratings
end