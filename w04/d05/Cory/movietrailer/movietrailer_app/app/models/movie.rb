class Movie < ActiveRecord::Base
  has_many :characters, :dependent => :destroy
  has_many :trailers, :dependent => :destroy
  self.validates(:title, { uniqueness: true })
end