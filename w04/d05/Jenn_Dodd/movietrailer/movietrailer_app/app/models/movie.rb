class Movie < ActiveRecord::Base
  has_many :characters, dependent: :destroy
  has_many :trailers, dependent: :destroy
end