class Trailer < ActiveRecord::Base
  self.belongs_to(:movie)
  { :dependent => :destroy }

end