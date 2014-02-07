class Spaceship < ActiveRecord::Base
  has_many :aliens, { :dependent => :destroy }
end