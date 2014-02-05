class Dish_rating < ActiveRecord::Base
  has_many :dishes
  has_many :judges

  validates(:score, {presence: true})
  validates(:dish_id, {presence: true})
  validates(:judge_id, {presence: true})


end