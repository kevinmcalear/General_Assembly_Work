class Movie < ActiveRecord::Base
  has_many :characters, dependent: :destroy
  has_many :trailers, dependent: :destroy

  validates :title, presence: true, uniqueness: true
end