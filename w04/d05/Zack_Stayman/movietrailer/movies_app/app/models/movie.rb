class Movie < ActiveRecord::Base
  has_and_belongs_to_many :characters
  has_many :trailers, { :dependent => :destroy}
  validates :title, presence: true
  validates :title, uniqueness: true
end