class Judge < ActiveRecord::Base
 self.validates(:name, {presence: true})
 belongs_to :Dish_rating

def give_score(number)
  return number
end

end
