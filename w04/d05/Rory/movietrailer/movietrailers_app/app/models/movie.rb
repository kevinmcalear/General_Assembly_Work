class Movie < ActiveRecord::Base
  has_many(:characters)
  has_many(:trailers)
  self.validates(:title, { presence: true, uniqueness: true })
  { :dependent => :destroy }
end