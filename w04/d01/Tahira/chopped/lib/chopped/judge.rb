class Judge < ActiveRecord::Base
  has_many :dish_ratings
  self.validates(:name, {presence: true})

  def rate_dish(rating)
    return rating
  end


end