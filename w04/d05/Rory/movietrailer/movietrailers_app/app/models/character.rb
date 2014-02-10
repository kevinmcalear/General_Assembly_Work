class Character < ActiveRecord::Base
  self.belongs_to(:movie)
  { :dependent => :destroy }

end