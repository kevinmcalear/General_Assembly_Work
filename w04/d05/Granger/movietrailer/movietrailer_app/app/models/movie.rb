class Movie < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true


  has_many :characters, dependent: :destroy

  has_many :trailers, dependent: :destroy

end