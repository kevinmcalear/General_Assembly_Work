class Dish < ActiveRecord::Base
  belongs_to :chef

  def dish_name(name)
    return name
  end

   self.validates(:name, { presence: true})
end