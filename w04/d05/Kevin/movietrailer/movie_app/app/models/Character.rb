class Character < ActiveRecord::Base
  belongs_to :movie
  validates :name, { presence: true, uniqueness: true }
end