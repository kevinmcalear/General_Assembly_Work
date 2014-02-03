class Judge < ActiveRecord::Base
  has_many :dishratings
  self.validates(:name, { presence: true })

end