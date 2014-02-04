#dish.rb

class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :courses

end