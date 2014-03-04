class Student < ActiveRecord::Base
  before_create :pick_house

  belongs_to :house

  private

  def pick_house
    self.house_id = [1,2,3,4].sample
  end
end