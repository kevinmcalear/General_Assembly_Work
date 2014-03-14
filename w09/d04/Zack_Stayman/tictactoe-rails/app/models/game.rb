class Game < ActiveRecord::Base
  validates_inclusion_of :winner, in: ["x", "o", "tie"]
end
