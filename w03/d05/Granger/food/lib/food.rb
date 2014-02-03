require "active_record"

class Food < ActiveRecord::Base

  belongs_to :fridge

  validates :fridge_id, reject_if: :too_many_foods?

  def too_many_foods?
    Food.all.count > 9
  end

end