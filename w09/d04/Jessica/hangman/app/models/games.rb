class Games < ActiveRecord::Base
  validates :won, inclusion: { in_array: [true, false] }
end
