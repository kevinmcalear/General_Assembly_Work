# character.rb
class Character < ActiveRecord::Base
  belongs_to :movie
end