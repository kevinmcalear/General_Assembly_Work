class Movie < ActiveRecord::Base
  has_many :characters
  has_many :trailers
end