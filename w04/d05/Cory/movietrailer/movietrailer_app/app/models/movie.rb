class Movie < ActiveRecord::Base
  has_many :characters
  has_many :trailers
  self.validates(:title, { uniqueness: true })
end