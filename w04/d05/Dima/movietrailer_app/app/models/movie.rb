class Movie < ActiveRecord::Base
  has_many :characters, { :dependent => :destroy }
  has_one :trailer, { :dependent => :destroy }
  validates :title, :presence => true
end