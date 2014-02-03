require "active_record"

class Drink < ActiveRecord::Base

  belongs_to :fridge

end