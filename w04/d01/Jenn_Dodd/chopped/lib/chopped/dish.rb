class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  self.validates(:name, {presence: true})
def has_ratings
# cannot figure out how to approach this
  
end

end
