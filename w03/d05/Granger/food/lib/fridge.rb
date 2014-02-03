require "active_record"

class Fridge < ActiveRecord::Base
  has_many :foods
  has_many :drinks


  validates :location, presence: true
  validates :brand, presence: true
  validates :size, presence: true

  accepts_nested_attributes_for :foods, reject_if: :too_many_foods?

  def too_many_foods?
    Food.all.count > 9
  end

end