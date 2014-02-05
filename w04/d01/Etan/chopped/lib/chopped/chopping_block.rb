class ChoppingBlock < ActiveRecord::Base
  belongs_to :chef
  belongs_to :course
end