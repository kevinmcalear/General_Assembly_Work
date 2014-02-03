class Fridge < ActiveRecord::Base
  has_many :foods, dependent: :destroy
  has_many :drinks, dependent: :destroy

  def to_s
    return location
  end
end