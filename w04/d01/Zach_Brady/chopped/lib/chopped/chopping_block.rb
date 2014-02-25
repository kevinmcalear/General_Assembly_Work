class ChoppingBlock < ActiveRecord::Base
  belongs_to :course
  belongs_to :chef
end