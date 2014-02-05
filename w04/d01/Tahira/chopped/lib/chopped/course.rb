class Course < ActiveRecord::Base
  has_many :dishes
  has_many :chopping_blocks

  def ingredient
    return "ingredient"
  end

  def round
    return "Dessert"
  end
end