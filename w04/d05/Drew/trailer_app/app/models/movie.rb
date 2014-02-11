class Movie < ActiveRecord::Base
  has_many :characters
  has_many :trailers
  validates :title, presence: true
  validates :title, uniqueness: true
end
