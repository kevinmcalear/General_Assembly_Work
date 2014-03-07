class Student < ActiveRecord::Base
  belongs_to :house
  before_create :assign_house

  def assign_house
    self.house = House.all.sample
  end
end