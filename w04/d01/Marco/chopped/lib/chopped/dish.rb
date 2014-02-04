class Dish < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
  has_many :dishratings
  has_many :judges, through: :dishratings


  self.validates(:name, { presence: true })

end