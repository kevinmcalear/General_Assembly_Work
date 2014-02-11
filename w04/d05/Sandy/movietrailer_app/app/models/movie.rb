class Movie < ActiveRecord::Base
  has_many :characters
  has_many :trailers

  validates :title, presence: true, uniqueness: true
end