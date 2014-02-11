class Movie < ActiveRecord::Base
  has_many :characters
  has_many :trailers
  validates :name, { presence: true, uniqueness: true }
end