class Character < ActiveRecord::Base
  belongs_to :movie
  self.validates(:name, { presence: true })
end