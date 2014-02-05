require "pry"

class Judge < ActiveRecord::Base
  self.validates(:name, { presence: true } )


  def rate_dish(rating, judge, dish)
    DishRating.create({score: rating, judge_id: judge, dish_id: dish})
  end
  #binding.pry

end

##  a new file for each class that you write & a new file for each test file

