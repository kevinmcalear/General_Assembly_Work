class Character < ActiveRecord::Base
  belongs_to :Movie
  validates :name, uniqueness: true, presence: true

end