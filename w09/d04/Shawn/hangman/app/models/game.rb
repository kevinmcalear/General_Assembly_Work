class Game < ActiveRecord::Base
  validates :won, inclusion: [true, false]
end
