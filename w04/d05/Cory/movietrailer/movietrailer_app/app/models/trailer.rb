class Trailer < ActiveRecord::Base
  belongs_to :movie
  self.validates(:title, { presence: true })
end